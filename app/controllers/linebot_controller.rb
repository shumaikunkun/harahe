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
            if Answer.find_by(user:event["source"]["userId"])  #ユーザがすでにモデルに登録されていたら、上書き、なければ、新規登録
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
                "text": "どこらへんがいい？",
                "actions": [
                  {
                    "type": "postback",
                    "label": "地図から出発地を指定する",
                    "data": "0.0",
                    text:"地図から出発地を指定する"
                  },
                  {
                    "type": "postback",
                    "label": "地域名を指定する",
                    "data": "0.1",
                    text:"地域名を指定する"
                  },
                  {
                    "type": "postback",
                    "label": "スキップする…",
                    "data": "0.2",
                    text:"スキップする…"
                  }
                ]
              }
            }
          elsif event["message"]["text"]=="時刻"
            message={
              type: "text",
              text: Time.new
            }
          elsif event["message"]["text"]=="画像"
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
          Answer.find_by(user:event["source"]["userId"]).update(lat:event["message"]["latitude"], lon:event["message"]["longitude"], region:nil)
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
                  text:"徒歩で行く🚶‍♂️"
                },
                {
                  "type": "postback",
                  "label": "自転車(半径2km圏内を表示)",
                  "data": "1.1",
                  text:"自転車で行く🚲"
                },
                {
                  "type": "postback",
                  "label": "車(半径5km圏内を表示)",
                  "data": "1.2",
                  text:"車で行く🚗"
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
                  text:"花畑・筑穂周辺あたりかな"
                }
              ]
            }
          }
        end

        if event["postback"]["data"].to_f>=0.2 && event["postback"]["data"].to_f<3 #0.2, 1. ,2.の時
          if event["postback"]["data"].to_i==1
            Answer.find_by(user:event["source"]["userId"]).update(trans:event["postback"]["data"].split(".")[1], region:nil)
            #交通手段取得
          elsif event["postback"]["data"].to_i==2
            Answer.find_by(user:event["source"]["userId"]).update(region:event["postback"]["data"].split(".")[1], trans:nil, lat:nil, lon:nil)
            #地域取得
          end

          #質問３
          message = {
            "type": "template",
            "altText": "質問に答えてね！",
            "template": {
              "type": "buttons",
              "text": "いつお店に行く？",
              "actions": [
                {
                  "type": "postback",
                  "label": "今でしょ！",
                  "data": "3.1",
                  text:"今行きます！"
                },
                {
                  "type": "postback",
                  "label": "時間を指定したい！",
                  "data": "3.0",
                  text:"時間を指定したい！"
                },
                {
                  "type": "postback",
                  "label": "スキップする…",
                  "data": "3.2",
                  text:"スキップする…"
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
            Answer.find_by(user:event["source"]["userId"]).update(day:Date.parse(Time.now.strftime("%Y-%m-%d")).wday, time:Time.now.strftime("%H:%M"))
            #text: Date.parse(Time.now.strftime("%Y-%m-%d")).wday
            #text: Time.now.strftime("%H:%M")
          elsif event["postback"]["data"]=="3.3"
            #データベースに選択された日時をデータベースに入れる
            Answer.find_by(user:event["source"]["userId"]).update(day:Date.parse(event["postback"]["params"]["datetime"].split("T")[0]).wday, time:event["postback"]["params"]["datetime"].split("T")[1])
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
                  text: "洋食がいい！"
                },
                {
                  "type": "postback",
                  "label": "中華",
                  "data": "4.2",
                  text: "中華がいい！"
                },
                {
                  "type": "postback",
                  "label": "エスニック",
                  "data": "4.3",
                  text: "エスニックがいい！"
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
          #json=Answer.find_by(user:event["source"]["userId"]).to_json

          #Restaurant.where(img:"https://tblg.k-img.com/restaurant/images/Rvw/20748/640x640_rect_20748683.jpg").each{|gyou|arr.push({img:gyou.img, name:gyou.name, url:gyou.url, address:gyou.address, time:gyou.mon})}
          day_arr=["sun","mon","tue","wed","thu","fry","sat"]
          day_num=Answer.where(user:event["source"]["userId"]).pluck(:day)[0] ? Answer.where(user:event["source"]["userId"]).pluck(:day)[0] : Date.parse(Time.now.strftime("%Y-%m-%d")).wday
          #曜日を選択してなければ、今日の曜日を格納
          day=day_arr[day_num]  #店一覧表示の際の開店時間を表示するために曜日を指定（数値をスキーマ名に変換）

          #緯度経度で絞る
          ans_lat=Answer.find_by(user:event["source"]["userId"]).lat
          ans_lon=Answer.find_by(user:event["source"]["userId"]).lon
          ans_trans=Answer.find_by(user:event["source"]["userId"]).trans
          id_latlon=[]
          Restaurant.all.each do |gyou|
            if ans_trans==nil  #スキップしたとき
              id_latlon.push(gyou.id)
            else
              dis=distance(ans_lat, ans_lon, gyou.latitude, gyou.longitude)
              if (ans_trans==0 && dis<=0.5 ) ||
                (ans_trans==1 && dis>0.5 && dis<=2 ) ||
                (ans_trans==2 && dis>2 && dis<=5 )
                id_latlon.push(gyou.id)
              end
            end
          end

          #地名で絞る
          ans_region=Answer.find_by(user:event["source"]["userId"]).region
          id_region=[]
          Restaurant.all.each do |gyou|
            if ans_region==nil  #スキップしたとき
              id_region.push(gyou.id)
            else
              if (ans_region==0 && (gyou.address=~/茨城県つくば市吾妻/ || gyou.address=~/茨城県つくば市竹園/) ) ||
                (ans_region==1 && (gyou.address=~/茨城県つくば市春日/ || gyou.address=~/茨城県つくば市天久保/) ) ||
                (ans_region==2 && (gyou.address=~/茨城県つくば市天王台/ || gyou.address=~/茨城県つくば市桜/) ) ||
                (ans_region==3 && (gyou.address=~/茨城県つくば市花畑/ || gyou.address=~/茨城県つくば市筑穂/) )
                id_region.push(gyou.id)
              end
            end
          end

          id_place = id_latlon & id_region #緯度経度と地名のジャンルで絞ったidリストの積集合

          #時間で絞る
          ans_day=Answer.find_by(user:event["source"]["userId"]).day
          id_time=[]
          Restaurant.all.each do |gyou|
            if ans_day==nil
              id_time.push(gyou.id)
            else
              ans_time=Answer.find_by(user:event["source"]["userId"]).time.gsub(/:/,".").to_f
              if gyou[day_arr[ans_day]] != "-1" #休みの場合を排除
                gyou[day_arr[ans_day]].split(",").each do |set|  #格納した曜日と一致する曜日の時間帯に入るか
                  if set.split("-")[0].to_f<=ans_time && ans_time<=set.split("-")[1].to_f
                    id_time.push(gyou.id)
                  end
                end
              end
            end
          end



          #ジャンルを絞る
          ans_genre=Answer.find_by(user:event["source"]["userId"]).genre
          ans_ramen=Answer.find_by(user:event["source"]["userId"]).ramen
          id_genre=[]
          Restaurant.all.each do |gyou|
            if (ans_genre==0 && gyou.category=="和食") || (ans_genre==1 && gyou.category=="洋食") ||
              (ans_genre==2 && gyou.category=="中華") || (ans_genre==3 && gyou.category=="エスニック") ||
              (ans_ramen==0 && gyou.category=="ラーメン")
              id_genre.push(gyou.id)
            end
          end



          id= id_place & id_time & id_genre #全てマッチした店のidを追加
          id=id.shuffle.take(10)  #１０件を超えた場合、ランダムに１０件抽出

          id=[1,2,3,4,5,6,7,8,9,10]

          logger.debug("+++++++++++++++++++++-#{id_latlon}+++++++++++++++++++++++++")
          logger.debug("+++++++++++++++++++++-#{id_region}+++++++++++++++++++++++++")
          logger.debug("+++++++++++++++++++++-#{id_time}+++++++++++++++++++++++++")
          logger.debug("+++++++++++++++++++++-#{id_genre}+++++++++++++++++++++++++")
          logger.debug("+++++++++++++++++++++-#{id}+++++++++++++++++++++++++")

          arr=[]
          Restaurant.all.each do |gyou|
            id.each do |i|
              if gyou.id==i  #find,find_by,whereメソッドがなぜか使えないので代用
                arr.push(
                  {
                    "type": "bubble",
                    "hero": {
                      "type": "image",
                      "url": gyou.img, ###
                      "size": "full",
                      "aspectRatio": "20:13",
                      "aspectMode": "cover",
                      "action": {
                        "type": "uri",
                        "uri": (gyou.url=="" ? "https://github.com/shumaikunkun" : gyou.url) ###
                      }
                    },
                    "body": {
                      "type": "box",
                      "layout": "vertical",
                      "spacing": "md",
                      "action": {
                        "type": "uri",
                        "uri": "https://github.com/shumaikunkun" ###
                      },
                      "contents": [
                        {
                          "type": "text",
                          "text": gyou.name, ###
                          "size": "xl",
                          "weight": "bold"
                        },
                        {
                          "type": "box",
                          "layout": "baseline",
                          "spacing": "sm",
                          "contents": [
                            {
                              "type": "text",
                              "text": "Place",
                              "color": "#aaaaaa",
                              "size": "sm",
                              "flex": 1
                            },
                            {
                              "type": "text",
                              "text": gyou.address, ###
                              "wrap": true,
                              "color": "#666666",
                              "size": "sm",
                              "flex": 5
                            }
                          ]
                        },
                        {
                          "type": "box",
                          "layout": "baseline",
                          "spacing": "sm",
                          "contents": [
                            {
                              "type": "text",
                              "text": "営業時間",
                              "color": "#aaaaaa",
                              "size": "sm",
                              "flex": 1
                            },
                            {
                              "type": "text",
                              "text": (gyou[day]=="-1" ? "本日休業日" : gyou[day]), ###
                              "wrap": true,
                              "color": "#666666",
                              "size": "sm",
                              "flex": 5
                            }
                          ]
                        }
                      ]
                    }
                  }
                )
              end
            end
          end

          if arr.empty? #該当idがないとき
            store_list=
            {
              "type": "text",
              "text": "残念ながらありません..."
            }
          else
            store_list=
            {
              "type": "flex",
              "altText": "メッセージが届きました",
              "contents": {
                "type": "carousel",
                "contents": arr #この配列にjsonが入ってる
              }
            }
          end

          message=
          [
            {
              "type": "text",
              "text": "おすすめのお店は..."
            },
            store_list
          ]

          @@flag=0
        end

      end

      #binding.pry
      client.reply_message(event['replyToken'], message)

    end
    head :ok
  end


  #単位はkm
  #lat1,lng1は現在位置の緯度経度、lat2,lng2は店舗の緯度経度
  def distance(lat1, lng1, lat2, lng2)
    # ラジアン単位に変換
    x1 = lat1.to_f * Math::PI / 180
    y1 = lng1.to_f * Math::PI / 180
    x2 = lat2.to_f * Math::PI / 180
    y2 = lng2.to_f * Math::PI / 180
    # 地球の半径 (km)
    radius = 6378.137
    # 差の絶対値
    diff_y = (y1 - y2).abs
    calc1 = Math.cos(x2) * Math.sin(diff_y)
    calc2 = Math.cos(x1) * Math.sin(x2) - Math.sin(x1) * Math.cos(x2) * Math.cos(diff_y)
    # 分子
    numerator = Math.sqrt(calc1 ** 2 + calc2 ** 2)
    # 分母
    denominator = Math.sin(x1) * Math.sin(x2) + Math.cos(x1) * Math.cos(x2) * Math.cos(diff_y)
    # 弧度
    degree = Math.atan2(numerator, denominator)
    # 大円距離 (km)
    return degree * radius
  end

end
