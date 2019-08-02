class LinebotController < ApplicationController
  require 'line/bot'  # gem 'line-bot-api'

  # callbackアクションのCSRFトークン認証を無効
  protect_from_forgery :except => [:callback]

  def client
    @client ||= Line::Bot::Client.new { |config|
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    }
  end

  @@flag=0

  def callback


    body = request.body.read

    signature = request.env['HTTP_X_LINE_SIGNATURE']
    head :bad_request unless client.validate_signature(body, signature)

    client.parse_events_from(body).each do |event|
      if event.class == Line::Bot::Event::Message
        if event.type == Line::Bot::Event::MessageType::Text
          if event["message"]["text"]=~/検索/
            @@flag=1
            #モデルに登録&初期化
            #ユーザIDは、event["source"]["userId"]
            if Answer.find_by(user:event["source"]["userId"])
              Answer.find_by(user:event["source"]["userId"]).update(lat:nil, lon:nil, trans:nil, region:nil, day:nil, time:nil, genre:nil, ramen:nil)
            else
              Answer.create(user:event["source"]["userId"])
            end
            #Answer.find_by(user:event["source"]["userId"])で参照
            #質問０
            message = {
              "type": "template",
              "altText": "質問に答えてね！",
              "template": {
                "type": "buttons",
                "text": "場所は？",
                "actions": [
                  {
                    "type": "postback",
                    "label": "地図から指定する",
                    "data": "0.0",
                    text:"地図から指定する"
                  },
                  {
                    "type": "postback",
                    "label": "地域名を指定する",
                    "data": "0.1",
                    text:"地域名を指定する"
                  },
                  {
                    "type": "postback",
                    "label": "スキップ",
                    "data": "0.2",
                    text:"スキップ"
                  }
                ]
              }
            }


          elsif event["message"]["text"]=="時刻"
            message={
              type: "text",
              text: Time.new
            }
          elsif event["message"]["text"]=="現在地"
            message={
              type: "text",
              text: "test"
            }
          else
            if @@flag!=1
              message={
                type: "text",
                text: "『検索』と送信すると筑波大学周辺の飲食店を絞り、優柔不断なあなたに最適なお店を提案します☺️"
              }
            end
          end

        end

        if event.type == Line::Bot::Event::MessageType::Location
          @@flag=1
          #緯度経度をモデルに格納
          # event["message"]["latitude"]
          # event["message"]["longitude"]
          #で参照できる
          Answer.find_by(user:event["source"]["userId"]).update(lat:event["message"]["latitude"], lon:event["message"]["longitude"])
          #質問１
          message = {
            "type": "template",
            "altText": "質問に答えてね！",
            "template": {
              "type": "buttons",
              "text": "何で向かう？",
              "actions": [
                {
                  "type": "postback",
                  "label": "徒歩(半径500m圏内を表示)",
                  "data": "1.0",
                  text:"徒歩で行く"
                },
                {
                  "type": "postback",
                  "label": "自転車(半径2km圏内を表示)",
                  "data": "1.1",
                  text:"自転車で行く"
                },
                {
                  "type": "postback",
                  "label": "車(半径5km圏内を表示)",
                  "data": "1.2",
                  text:"車で行く"
                }
              ]
            }
          }
        end

      end

      if event.class == Line::Bot::Event::Postback
        @@flag=1
        if event["postback"]["data"]=="0.0"
          #0.3を返す
          message = {
            "type": "template",
            "altText": "質問に答えてね！",
            "template": {
              "type": "buttons",
              "text": "場所を指定してね！",
              "actions": [
                {
                  "type":"uri",
                  #"data":"0.3",
                  "label": "場所を選択する",
                  "uri": "line://nv/location"
                }
              ]
            }
          }
        end

        if event["postback"]["data"]=="0.1"
          #質問２
          message = {
            "type": "template",
            "altText": "質問に答えてね！",
            "template": {
              "type": "buttons",
              "text": "エリアを選んでね！",
              "actions": [
                {
                  "type": "postback",
                  "label": "吾妻・竹園周辺",
                  "data": "2.0",
                  text:"吾妻・竹園周辺あたりかなあ"
                },
                {
                  "type": "postback",
                  "label": "春日・天久保周辺",
                  "data": "2.1",
                  text:"春日・天久保周辺あたりかな"
                },
                {
                  "type": "postback",
                  "label": "天王台・桜周辺",
                  "data": "2.2",
                  text:"天王台・桜周辺あたりかな"
                },
                {
                  "type": "postback",
                  "label": "一の矢・花畑周辺",
                  "data": "2.3",
                  text:"一の矢・花畑周辺あたりかな"
                }
              ]
            }
          }
        end

        if event["postback"]["data"].to_f>=0.2 && event["postback"]["data"].to_f<3 #0.2, 1. ,2.の時
          if event["postback"]["data"].to_i==1
            Answer.find_by(user:event["source"]["userId"]).update(trans:event["postback"]["data"].split(".")[1])
            #交通手段取得
          elsif event["postback"]["data"].to_i==2
            Answer.find_by(user:event["source"]["userId"]).update(region:event["postback"]["data"].split(".")[1])
            #地域取得
          end

          #質問３
          message = {
            "type": "template",
            "altText": "質問に答えてね！",
            "template": {
              "type": "buttons",
              "text": "時間は？",
              "actions": [
                {
                  "type": "postback",
                  "label": "現在時刻を使う",
                  "data": "3.1",
                  text:"現在時刻を使う"
                },
                {
                  "type": "postback",
                  "label": "時間を指定する",
                  "data": "3.0",
                  text:"時間を指定する"
                },
                {
                  "type": "postback",
                  "label": "スキップ",
                  "data": "3.2",
                  text:"スキップ"
                }
              ]
            }
          }
        end

        if event["postback"]["data"]=="3.0"
          #時間を入力
          message = {
            "type": "template",
            "altText": "質問に答えてね！",
            "template": {
              "type": "buttons",
              "text": "時間を選択してね！",
              "actions": [
                {
                  "type":"datetimepicker",
                  "data":"3.3",
                  "mode":"datetime",
                  "label": "時間を選択",
                  "initial":Time.now.strftime("%Y-%m-%dT%H:%M")
                }
              ]
            }
          }
        end

        if event["postback"]["data"].to_f>3 && event["postback"]["data"].to_f<4 #3.1-3.3, 3.0は含まない

          if event["postback"]["data"]=="3.1"
            #データベースに現在日時をデータベースに入れる
            Answer.find_by(user:event["source"]["userId"]).update(day:Date.parse(Time.now.strftime("%Y-%m-%d")).wday)
            Answer.find_by(user:event["source"]["userId"]).update(time:Time.now.strftime("%H:%M"))
            #text: Date.parse(Time.now.strftime("%Y-%m-%d")).wday
            #text: Time.now.strftime("%H:%M")
          elsif event["postback"]["data"]=="3.3"
            #データベースに選択された日時をデータベースに入れる
            Answer.find_by(user:event["source"]["userId"]).update(day:Date.parse(event["postback"]["params"]["datetime"].split("T")[0]).wday)
            Answer.find_by(user:event["source"]["userId"]).update(time:event["postback"]["params"]["datetime"].split("T")[1])
            #text: Date.parse(event["postback"]["params"]["datetime"].split("T")[0]).wday
            #text: event["postback"]["params"]["datetime"].split("T")[1]
          end

          #質問４
          message = {
            "type": "template",
            "altText": "質問に答えてね！",
            "template": {
              "type": "buttons",
              "text": "ジャンルは？",
              "actions": [
                {
                  "type": "postback",
                  "label": "和食",
                  "data": "4.0",
                  text:"和食がいい！"
                },
                {
                  "type": "postback",
                  "label": "洋食",
                  "data": "4.1",
                  text: "洋食いい！"
                },
                {
                  "type": "postback",
                  "label": "中華",
                  "data": "4.2",
                  text: "中華いい！"
                },
                {
                  "type": "postback",
                  "label": "エスニック",
                  "data": "4.3",
                  text: "エスニックいい！"
                }
              ]
            }
          }
        end

        if event["postback"]["data"].to_i==4 #4.
          #ジャンルを絞る（中華はラーメンも含む）
          Answer.find_by(user:event["source"]["userId"]).update(genre:event["postback"]["data"].split(".")[1])
          #質問５
          message = {
            "type": "template",
            "altText": "質問に答えてね！",
            "template": {
              "type": "buttons",
              "text": "やっぱラーメンがいいよな！？",
              "actions": [
                {
                  "type": "postback",
                  "label": "いいね！",
                  "data": "5.0",
                  text:"ラーメンがいい！"
                },
                {
                  "type": "postback",
                  "label": "それはちょっと…",
                  "data": "5.1",
                  text:"ラーメンの気分じゃないなあ…"
                }
              ]
            }
          }
        end

        if event["postback"]["data"].to_i==5 #5.
          #ラーメンだけにするか。しないかをモデルに格納
          Answer.find_by(user:event["source"]["userId"]).update(ramen:event["postback"]["data"].split(".")[1])
          #検索結果
          message={
            type: "text",
            text: Answer.find_by(user:event["source"]["userId"]).to_json
          }
          # [
          #   {
          #     "type": "text",
          #     "text": "おすすめのお店は..."
          #   },
          #   "type": "flex",
          #   "altText": "this is a flex message",
          #   "contents": {
          #     "type": "carousel",
          #     "contents": [
          #       {
          #         "type": "bubble",
          #         "hero": {
          #           "type": "image",
          #           "url": "https://tblg.k-img.com/restaurant/images/Rvw/20748/640x640_rect_20748683.jpg",
          #           "size": "full",
          #           "aspectRatio": "20:13",
          #           "aspectMode": "cover",
          #           "action": {
          #             "type": "uri",
          #             "uri": "https://classmethod.jp/"
          #           }
          #         },
          #         "body": {
          #           "type": "box",
          #           "layout": "vertical",
          #           "spacing": "md",
          #           "action": {
          #             "type": "uri",
          #             "uri": "https://classmethod.jp/"
          #           },
          #           "contents": [
          #             {
          #               "type": "text",
          #               "text": "清六屋",
          #               "size": "xl",
          #               "weight": "bold"
          #             },
          #             {
          #               "type": "box",
          #               "layout": "baseline",
          #               "spacing": "sm",
          #               "contents": [
          #                 {
          #                   "type": "text",
          #                   "text": "Place",
          #                   "color": "#aaaaaa",
          #                   "size": "sm",
          #                   "flex": 1
          #                 },
          #                 {
          #                   "type": "text",
          #                   "text": "茨城県つくば市天久保3丁目4-8",
          #                   "wrap": true,
          #                   "color": "#666666",
          #                   "size": "sm",
          #                   "flex": 5
          #                 }
          #               ]
          #             },
          #             {
          #               "type": "box",
          #               "layout": "baseline",
          #               "spacing": "sm",
          #               "contents": [
          #                 {
          #                   "type": "text",
          #                   "text": "営業時間",
          #                   "color": "#aaaaaa",
          #                   "size": "sm",
          #                   "flex": 1
          #                 },
          #                 {
          #                   "type": "text",
          #                   "text": "10:00-18:00",
          #                   "wrap": true,
          #                   "color": "#666666",
          #                   "size": "sm",
          #                   "flex": 5
          #                 }
          #               ]
          #             }
          #           ]
          #         }
          #       },
          #       {
          #         "type": "bubble",
          #         "hero": {
          #           "type": "image",
          #           "url": "https://tblg.k-img.com/restaurant/images/Rvw/20748/640x640_rect_20748683.jpg",
          #           "size": "full",
          #           "aspectRatio": "20:13",
          #           "aspectMode": "cover",
          #           "action": {
          #             "type": "uri",
          #             "uri": "https://classmethod.jp/"
          #           }
          #         },
          #         "body": {
          #           "type": "box",
          #           "layout": "vertical",
          #           "spacing": "md",
          #           "action": {
          #             "type": "uri",
          #             "uri": "https://classmethod.jp/"
          #           },
          #           "contents": [
          #             {
          #               "type": "text",
          #               "text": "清六屋",
          #               "size": "xl",
          #               "weight": "bold"
          #             },
          #             {
          #               "type": "box",
          #               "layout": "baseline",
          #               "spacing": "sm",
          #               "contents": [
          #                 {
          #                   "type": "text",
          #                   "text": "Place",
          #                   "color": "#aaaaaa",
          #                   "size": "sm",
          #                   "flex": 1
          #                 },
          #                 {
          #                   "type": "text",
          #                   "text": "茨城県つくば市天久保3丁目4-8",
          #                   "wrap": true,
          #                   "color": "#666666",
          #                   "size": "sm",
          #                   "flex": 5
          #                 }
          #               ]
          #             },
          #             {
          #               "type": "box",
          #               "layout": "baseline",
          #               "spacing": "sm",
          #               "contents": [
          #                 {
          #                   "type": "text",
          #                   "text": "営業時間",
          #                   "color": "#aaaaaa",
          #                   "size": "sm",
          #                   "flex": 1
          #                 },
          #                 {
          #                   "type": "text",
          #                   "text": "10:00-18:00",
          #                   "wrap": true,
          #                   "color": "#666666",
          #                   "size": "sm",
          #                   "flex": 5
          #                 }
          #               ]
          #             }
          #           ]
          #         }
          #       }
          #     ]
          #   }
          # ]
          @@flag=0
        end

      end

      #binding.pry
      client.reply_message(event['replyToken'], message)

    end
    head :ok
  end

end
