# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create(
  name:"清六家 筑波大学店",
  sun:"0.00-23.59",
  mon:"0.00-23.59",
  tue:"0.00-23.59",
  wed:"0.00-23.59",
  thu:"0.00-23.59",
  fry:"0.00-23.59",
  sat:"0.00-23.59",
  latitude:36.1057469,
  longitude:140.1000816,
  address:"茨城県つくば市天久保3丁目4-8",
  category:"ラーメン",
  url:"http://www.seirock-ya.jp/",
  tel:"029-875-9769",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/20748/640x640_rect_20748683.jpg"
)

Restaurant.create(
  name:"百香亭 筑波大学店",
  sun:"11.30-15.00,17.30-23.30",
  mon:"11.30-15.00,17.30-23.30",
  tue:"11.30-15.00,17.30-23.30",
  wed:"11.30-15.00,17.30-23.30",
  thu:"11.30-15.00,17.30-23.30",
  fry:"11.30-15.00,17.30-23.30",
  sat:"11.30-15.00,17.30-23.30",
  latitude:36.1057466,
  longitude:140.0916004,
  address:"茨城県つくば市天久保3丁目15-1",
  category:"中華",
  url:"http://hyakkoutei.gorp.jp",
  tel:"050-3463-7288",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/111690/150x150_square_111690761.jpg"
)

Restaurant.create(
  name:"大学会館レストランプラザ 筑波デミ",
  sun:"-1",
  mon:"11.00-13.00,17.00-20.30",
  tue:"11.00-13.00,17.00-20.30",
  wed:"11.00-13.00,17.00-20.30",
  thu:"11.00-13.00,17.00-20.30",
  fry:"11.00-13.00,17.00-20.30",
  sat:"-1",
  latitude:36.1076436,
  longitude:140.0974427,
  address:"茨城県つくば市天久保3丁目1",
  category:"洋食",
  url:"http://tsukuba-koseikai.com",
  tel:"029-855-6306",
  img:"https://image1.shopserve.jp/kimchi-club.com/pic-labo/limg/kim1.jpg"
)

Restaurant.create(
  name:"ジュエル オブ インディア",
  sun:"11.00-23.00",
  mon:"11.00-23.00",
  tue:"11.00-23.00",
  wed:"11.00-23.00",
  thu:"11.00-23.00",
  fry:"11.00-23.00",
  sat:"11.00-23.00",
  latitude:36.1076433,
  longitude:140.0974427,
  address:"茨城県つくば市天久保3丁目10-16 横田ハイツ1F",
  category:"エスニック",
  url:"http://jewel-of-india.com",
  tel:"029-828-5540",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/32948/150x150_square_32948570.jpg"
)

Restaurant.create(
  name:"とんかつ千香華味",
  sun:"11.00-15.00,17.30-23.30",
  mon:"11.00-15.00,17.30-23.30",
  tue:"11.00-15.00,17.30-23.30",
  wed:"11.00-15.00,17.30-23.30",
  thu:"11.00-15.00,17.30-23.30",
  fry:"11.00-15.00,17.30-23.30",
  sat:"11.00-15.00,17.30-23.30",
  latitude:36.1076433,
  longitude:140.0974427,
  address:"茨城県つくば市天久保3丁目10-10",
  category:"和食",
  url:"https://senkouhanami-tsukuba.gorp.jp/",
  tel:"029-855-9766",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/98546/150x150_square_98546166.jpg"
)

Restaurant.create(
  name:"松屋 つくば西大通り店",
  sun:"0.00-23.59",
  mon:"0.00-23.59",
  tue:"0.00-23.59",
  wed:"0.00-23.59",
  thu:"0.00-23.59",
  fry:"0.00-23.59",
  sat:"0.00-23.59",
  latitude:36.094893,
  longitude:140.0888443,
  address:"茨城県つくば市春日4丁目1-5",
  category:"和食",
  url:"http://matsuyafoods.co.jp",
  tel:"029-861-8850",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/104957/150x150_square_104957758.jpg"
)

# Restaurant.create(
#   name:"夢屋",
#   sun:"18.00-21.00",
#   mon:"11.30-13.45,18.00-22.00",
#   tue:"11.30-13.45,18.00-22.00",
#   wed:"-1",
#   thu:"11.30-13.45,18.00-22.00",
#   fry:"11.30-13.45,18.00-22.00",
#   sat:"11.30-13.45,18.00-22.00",
#   latitude:36.0986956,
#   longitude:140.0892459,
#   address:"茨城県つくば市春日4丁目4-5",
#   category:"洋食",
#   url:"",
#   tel:"029-858-0668",
#   img:"https://tblg.k-img.com/restaurant/images/Rvw/112066/150x150_square_112066912.jpg"
# )

Restaurant.create(
  name:"ラーメン志恩",
  sun:"11.00-22.00",
  mon:"11.00-23.59",
  tue:"11.00-23.59",
  wed:"11.00-23.59",
  thu:"11.00-23.59",
  fry:"11.00-23.59",
  sat:"11.00-22.00",
  latitude:36.0986949,
  longitude:140.0892459,
  address:"茨城県つくば市天久保3丁目11-1",
  category:"ラーメン",
  url:"https://twitter.com/ramenshion1001",
  tel:"",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/111792/150x150_square_111792578.jpg"
)

Restaurant.create(
  name:"つつじヶ丘ガーデンハウス",
  sun:"17.00-21.00",
  mon:"-1",
  tue:"-1",
  wed:"-1",
  thu:"-1",
  fry:"-1",
  sat:"17.00-21.00",
  latitude:36.2327039,
  longitude:140.0694517,
  address:"茨城県つくば市筑波1",
  category:"和食",
  url:"http://www.mt-tsukuba.com",
  tel:"029-866-0833",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/86469/150x150_square_86469768.jpg"
)

Restaurant.create(
  name:"RanRan",
  sun:"-1",
  mon:"17.45-22.00",
  tue:"17.45-22.00",
  wed:"-1",
  thu:"17.45-22.00",
  fry:"17.45-22.00",
  sat:"-1",
  latitude:36.0986949,
  longitude:140.0892459,
  address:"茨城県つくば市春日4-4-18",
  category:"洋食",
  url:"",
  tel:"029-852-3595",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/52305/150x150_square_52305085.jpg"
)

Restaurant.create(
    name:"麺屋とどろき",
    sun:"12.00-14.00,18.00-22.00",
    mon:"12.00-14.00,18.00-22.00",
    tue:"12.00-14.00,18.00-22.00",
    wed:"12.00-14.00,18.00-22.00",
    thu:"12.00-14.00,18.00-22.00",
    fry:"12.00-14.00,18.00-22.00",
    sat:"12.00-14.00,18.00-22.00",
    latitude:36.1289838,
    longitude:140.084718,
    address:"茨城県つくば市花畑３丁目１２−８ 麺屋とどろき",
    category:"ラーメン",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8020725/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/99378/150x150_square_99378913.jpg"
)
Restaurant.create(
    name:"そば坊・つくば店",
    sun:"11.30-22.00",
    mon:"11.30-22.00",
    tue:"-1",
    wed:"11.30-22.00",
    thu:"11.30-22.00",
    fry:"11.30-22.00",
    sat:"11.30-22.00",
    latitude:36.1289838,
    longitude:140.084718,
    address:"茨城県つくば市花畑１丁目１３−８",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8001698/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/69977/150x150_square_69977226.jpg"
)
Restaurant.create(
    name:"けん つくば学園東大通り店",
    sun:"11.00-22.00",
    mon:"11.00-22.00",
    tue:"11.00-22.00",
    wed:"11.00-22.00",
    thu:"-1",
    fry:"11.00-22.00",
    sat:"11.00-22.00",
    latitude:36.1289838,
    longitude:140.084718,
    address:"茨城県つくば市花畑３丁目２９−１",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8011024/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/100557/150x150_square_100557020.jpg"
)
Restaurant.create(
    name:"鳥正",
    sun:"-1",
    mon:"17.00-23.30",
    tue:"17.00-23.30",
    wed:"17.00-23.30",
    thu:"17.00-23.30",
    fry:"17.00-23.30",
    sat:"17.00-23.30",
    latitude:36.0767082,
    longitude:140.1174611,
    address:"茨城県つくば市花畑２丁目１５−３",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8013522/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/33882/150x150_square_33882119.jpg"
)
Restaurant.create(
    name:"清六家 総本山",
    sun:"11.00-23.59",
    mon:"11.00-23.59",
    tue:"11.00-23.59",
    wed:"11.00-23.59",
    thu:"11.00-23.59",
    fry:"11.00-23.59",
    sat:"11.00-23.59",
    latitude:36.1289838,
    longitude:140.084718,
    address:"茨城県つくば市花畑２丁目１２−７",
    category:"ラーメン",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8014528/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/20748/150x150_square_20748683.jpg"
)
Restaurant.create(
    name:"珍味軒",
    sun:"11.00-14.30,17.00-23.30",
    mon:"11.00-14.30,17.00-23.30",
    tue:"11.00-14.30,17.00-23.30",
    wed:"11.00-14.30,17.00-23.30",
    thu:"11.00-14.30,17.00-23.30",
    fry:"11.00-14.30,17.00-23.30",
    sat:"11.00-14.30,17.00-23.30",
    latitude:36.1289838,
    longitude:140.084718,
    address:"茨城県つくば市花畑２丁目１２−５",
    category:"中華",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8020307/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/84577/150x150_square_84577200.jpg"
)
Restaurant.create(
    name:"コッコリーノ",
    sun:"17.30-23.00",
    mon:"17.30-23.00",
    tue:"17.30-23.00",
    wed:"17.30-23.00",
    thu:"17.30-23.00",
    fry:"17.30-23.00",
    sat:"17.30-23.00",
    latitude:36.132242,
    longitude:140.0834949,
    address:"茨城県つくば市花畑２丁目９−１５",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8000065/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/6386/150x150_square_6386052.jpg"
)
Restaurant.create(
    name:"竹前",
    sun:"11.30-14.30,17.30-22.00",
    mon:"11.30-14.30,17.30-22.00",
    tue:"11.30-14.30,17.30-22.00",
    wed:"11.30-14.30,17.30-22.00",
    thu:"11.30-14.30,17.30-22.00",
    fry:"11.30-14.30,17.30-22.00",
    sat:"11.30-14.30,17.30-22.00",
    latitude:36.132242,
    longitude:140.0834949,
    address:"茨城県つくば市筑穂１丁目１３−１３",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8009049/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/58341/150x150_square_58341647.jpg"
)
Restaurant.create(
    name:"スタミナラーメン がむしゃ",
    sun:"-1",
    mon:"11.30-14.30,17.30-21.30",
    tue:"11.30-14.30,17.30-21.30",
    wed:"11.30-14.30,17.30-21.30",
    thu:"11.30-14.30,17.30-21.30",
    fry:"11.30-14.30,17.30-21.30",
    sat:"11.30-14.30,17.30-21.30",
    latitude:36.132242,
    longitude:140.0792892,
    address:"茨城県つくば市筑穂１丁目１３−２",
    category:"ラーメン",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8000418/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/110316/150x150_square_110316903.jpg"
)
Restaurant.create(
    name:"欧風ｶﾌｪﾚｽﾄﾗﾝ シャンドゥフルール",
    sun:"11.00-15.00,18.00-23.59",
    mon:"11.00-15.00,18.00-23.59",
    tue:"11.00-15.00,18.00-23.59",
    wed:"11.00-15.00,18.00-23.59",
    thu:"11.00-15.00,18.00-23.59",
    fry:"11.00-15.00,18.00-23.59",
    sat:"11.00-15.00,18.00-23.59",
    latitude:36.1331605,
    longitude:140.0792892,
    address:"茨城県つくば市花畑２丁目７−１６",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8000337/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/53148/150x150_square_53148203.jpg"
)
Restaurant.create(
    name:"ミラ花畑レストラン",
    sun:"11.00-15.00,17.00-23.00",
    mon:"11.00-15.00,17.00-23.00",
    tue:"11.00-15.00,17.00-23.00",
    wed:"11.00-15.00,17.00-23.00",
    thu:"11.00-15.00,17.00-23.00",
    fry:"11.00-15.00,17.00-23.00",
    sat:"11.00-15.00,17.00-23.00",
    latitude:36.1331605,
    longitude:140.0792892,
    address:"茨城県つくば市筑穂１丁目１６−４",
    category:"エスニック",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8010431/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/103494/150x150_square_103494892.jpg"
)
Restaurant.create(
    name:"ステーキ食堂 肉の番人",
    sun:"11.30-14.20",
    mon:"11.30-14.20,17.30-21.50",
    tue:"11.30-14.20,17.30-21.50",
    wed:"-1",
    thu:"11.30-14.20,17.30-21.50",
    fry:"11.30-14.20,17.30-21.50",
    sat:"11.30-14.20,17.30-21.50",
    latitude:36.132242,
    longitude:140.0834949,
    address:"茨城県つくば市筑穂１丁目１−１３",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8021066/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/106083/150x150_square_106083408.jpg"
)
Restaurant.create(
    name:"筑波大学 附属病院桐仁会食堂",
    sun:"07.30-20.00",
    mon:"07.30-20.00",
    tue:"07.30-20.00",
    wed:"07.30-20.00",
    thu:"07.30-20.00",
    fry:"07.30-20.00",
    sat:"07.30-20.00",
    latitude:36.094297,
    longitude:140.0951425,
    address:"茨城県つくば市天久保２丁目１−１",
    category:"和食",
    url:"http://www.tohjinkai.jp/about_shokudo.html",
    tel:"029-858-0127",
    img:"https://tabelog.com/imgview/original?id=r5601469510001"
)

Restaurant.create(
    name:"あじ彩",
    sun:"0.00-02.00,18.00-23.59",
    mon:"0.00-02.00,18.00-23.59",
    tue:"0.00-02.00,18.00-23.59",
    wed:"0.00-02.00",
    thu:"18.00-23.59",
    fry:"0.00-02.00,18.00-23.59",
    sat:"0.00-02.00,18.00-23.59",
    latitude:36.0978711,
    longitude:140.1080255,
    address:"茨城県つくば市天久保２丁目９−２",
    category:"和食",
    url:"https://twitter.com/ajisaimaster",
    tel:"029-852-0050",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/112286/150x150_square_112286490.jpg"
)

Restaurant.create(
    name:"定食・居酒屋どっとくう",
    sun:"-1",
    mon:"11.30-15.00,18.30-23.30",
    tue:"11.30-15.00,18.30-23.30",
    wed:"11.30-15.00,18.30-23.30",
    thu:"11.30-15.00,18.30-23.30",
    fry:"11.30-15.00,18.30-23.30",
    sat:"11.30-15.00,18.30-23.30",
    latitude:36.0883409,
    longitude:140.1114694,
    address:"茨城県つくば市天久保２丁目２−５",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8020105/",
    tel:"029-899-8003",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/76383/150x150_square_76383487.jpg"
)
Restaurant.create(
    name:"うまいもん太陽",
    sun:"0.00-1.00,17.30-23.59",
    mon:"0.00-1.00,17.30-23.59",
    tue:"0.00-1.00,17.30-23.59",
    wed:"0.00-1.00,17.30-23.59",
    thu:"0.00-1.00,17.30-23.59",
    fry:"0.00-1.00,17.30-23.59",
    sat:"0.00-1.00,17.30-23.59",
    latitude:36.093709,
    longitude:140.1057095,
    address:"茨城県つくば市天久保１丁目１０−２１",
    category:"和食",
    url:"https://umaimon-taiyo.gorp.jp",
    tel:"050-3373-2013",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/67784/150x150_square_67784322.jpg"
)

Restaurant.create(
    name:"餃子や　まっちゃん",
    sun:"11.45-14.00,18.00-21.00",
    mon:"11.45-14.00,18.00-21.00",
    tue:"11.45-14.00,18.00-21.00",
    wed:"11.45-14.00,18.00-21.00",
    thu:"11.45-14.00,18.00-21.00",
    fry:"-1",
    sat:"11.45-14.00,18.00-21.00",
    latitude:36.0946001,
    longitude:140.1059973,
    address:"茨城県つくば市天久保1丁目 １−１０−４ ジョイプラザ天久保 ５",
    category:"中華",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8021237/",
    tel:"029-856-3370",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/99104/150x150_square_99104725.jpg"
)
Restaurant.create(
    name:"より味ち",
    sun:"18.00-23.59",
    mon:"18.00-23.59",
    tue:"-1",
    wed:"18.00-23.59",
    thu:"18.00-23.59",
    fry:"18.00-23.59",
    sat:"18.00-23.59",
    latitude:36.0927791,
    longitude:140.0923772,
    address:"茨城県つくば市春日４丁目１５−１９",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8000851/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/5086/150x150_square_5086451.jpg"
)
Restaurant.create(
    name:"夢屋",
    sun:"11.30-13.45,18.00-22.00",
    mon:"11.30-13.45,18.00-22.00",
    tue:"11.30-13.45,18.00-22.00",
    wed:"-1",
    thu:"11.30-13.45,18.00-22.00",
    fry:"11.30-13.45,18.00-22.00",
    sat:"11.30-13.45,18.00-22.00",
    latitude:36.0927791,
    longitude:140.0923772,
    address:"茨城県つくば市春日４丁目４−５",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8008433/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/112066/150x150_square_112066912.jpg"
)
Restaurant.create(
    name:"Clematis",
    sun:"11.00-15.00,18.00-21.30",
    mon:"11.00-15.00,18.00-21.30",
    tue:"11.00-15.00,18.00-21.30",
    wed:"11.00-15.00,18.00-21.30",
    thu:"11.00-15.00,18.00-21.30",
    fry:"11.00-15.00,18.00-21.30",
    sat:"11.00-15.00,18.00-21.30",
    latitude:36.0927791,
    longitude:140.0923772,
    address:"茨城県つくば市春日４丁目５−７ クラモチ春日マンション１０７ー１号",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8010631/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/37536/150x150_square_37536589.jpg"
)
Restaurant.create(
    name:"れんが亭 つくば店",
    sun:"11.30-14.00,17.00-23.00",
    mon:"11.30-14.00,17.00-23.00",
    tue:"11.30-14.00,17.00-23.00",
    wed:"11.30-14.00,17.00-23.00",
    thu:"11.30-14.00,17.00-23.00",
    fry:"11.30-14.00,17.00-23.00",
    sat:"11.30-14.00,17.00-23.00",
    latitude:36.0927791,
    longitude:140.0923772,
    address:"茨城県つくば市春日４丁目１−１",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8009155/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/46843/150x150_square_46843074.jpg"
)
Restaurant.create(
    name:"元祖 手打つけ麺 丸長",
    sun:"11.30-15.00,18.00-20.30",
    mon:"11.30-15.00,18.00-20.30",
    tue:"11.30-15.00,18.00-20.30",
    wed:"-1",
    thu:"11.30-15.00,18.00-20.30",
    fry:"11.30-15.00,18.00-20.30",
    sat:"11.30-15.00,18.00-20.30",
    latitude:36.0951801,
    longitude:140.096648,
    address:"茨城県つくば市春日４丁目１２−３",
    category:"ラーメン",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8000011/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/111709/150x150_square_111709322.jpg"
)
Restaurant.create(
    name:"誠寿司",
    sun:"11.30-20.30",
    mon:"11.30-20.30",
    tue:"-1",
    wed:"11.30-20.30",
    thu:"11.30-20.30",
    fry:"11.30-20.30",
    sat:"11.30-20.30",
    latitude:36.0951797,
    longitude:140.0965857,
    address:"茨城県つくば市春日４丁目１２−３",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8004815/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/110567/150x150_square_110567489.jpg"
)
# Restaurant.create(
#     name:"松屋 つくば西大通り店",
#     sun:"17.30-23.00",
#     mon:"17.30-23.00",
#     tue:"17.30-23.00",
#     wed:"17.30-23.00",
#     thu:"17.30-23.00",
#     fry:"17.30-23.00",
#     sat:"17.30-23.00",
#     latitude:36.0951797,
#     longitude:140.0965857,
#     address:"茨城県つくば市春日４丁目１−５",
#     category:"和食",
#     url:"https://tabelog.com/ibaraki/A0802/A080201/8012811/",
#     tel:"029-824-0073",
#     img:"https://tblg.k-img.com/restaurant/images/Rvw/43506/150x150_square_43506856.jpg"
# )
Restaurant.create(
    name:"フライパン",
    sun:"11.00-22.00",
    mon:"-1",
    tue:"11.00-22.00",
    wed:"11.00-22.00",
    thu:"11.00-22.00",
    fry:"11.00-22.00",
    sat:"11.00-22.00",
    latitude:36.0951797,
    longitude:140.0965857,
    address:"茨城県つくば市春日４丁目３−２２",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8002712/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/111420/150x150_square_111420033.jpg"
)
Restaurant.create(
    name:"トルテリーニ",
    sun:"11.30-13.30,17.30-19.30",
    mon:"11.30-13.30,17.30-19.30",
    tue:"11.30-13.30,17.30-19.30",
    wed:"11.30-13.30,17.30-19.30",
    thu:"11.30-13.30,17.30-19.30",
    fry:"11.30-13.30,17.30-19.30",
    sat:"11.30-13.30,17.30-19.30",
    latitude:36.0951797,
    longitude:140.0965857,
    address:"茨城県つくば市春日３丁目１９−７",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8004357/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/100248/150x150_square_100248224.jpg"
)

Restaurant.create(
    name:"ル・スケアクロウ（Ｌｅ・Ｓｃａｒｅｃｒｏｗ）",
    sun:"11.30-14.00,18.00-21.00",
    mon:"11.30-14.00,18.00-21.00",
    tue:"-1",
    wed:"11.30-14.00,18.00-21.00",
    thu:"11.30-14.00,18.00-21.00",
    fry:"11.30-14.00,18.00-21.00",
    sat:"11.30-14.00,18.00-21.00",
    latitude:36.0951797,
    longitude:140.0965857,
    address:"茨城県つくば市春日３丁目１３−１",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8012451/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/13222/150x150_square_13222457.jpg"
)

Restaurant.create(
    name:"Ｃｒｕｉｓｅ",
    sun:"18.00-23.59,0.00-3.00",
    mon:"18.00-23.59,0.00-3.00",
    tue:"18.00-23.59,0.00-3.00",
    wed:"18.00-23.59,0.00-3.00",
    thu:"18.00-23.59,0.00-3.00",
    fry:"18.00-23.59,0.00-3.00",
    sat:"18.00-23.59,0.00-3.00",
    latitude:36.0951797,
    longitude:140.0965857,
    address:"茨城県つくば市春日３丁目１−７ 1F",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8000602/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/65931/150x150_square_65931564.jpg"
)

Restaurant.create(
    name:"いの瀬 凜",
    sun:"11.30-14.30,17.00-22.00",
    mon:"11.30-14.30,17.00-22.00",
    tue:"11.30-14.30,17.00-22.00",
    wed:"-1",
    thu:"11.30-14.30,17.00-22.00",
    fry:"11.30-14.30,17.00-22.00",
    sat:"11.30-14.30,17.00-22.00",
    latitude:36.0951797,
    longitude:140.096585,
    address:"茨城県つくば市春日２丁目１２−８",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8017218/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/91514/150x150_square_91514206.jpg"
)

Restaurant.create(
    name:"デニーズ筑波学園都市店",
    sun:"0.00-23.59",
    mon:"0.00-23.59",
    tue:"0.00-23.59",
    wed:"0.00-23.59",
    thu:"0.00-23.59",
    fry:"0.00-23.59",
    sat:"0.00-23.59",
    latitude:36.0951797,
    longitude:140.0965857,
    address:"茨城県つくば市春日２丁目７",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8007524/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/89512/150x150_square_89512784.jpg"
)

Restaurant.create(
    name:"サタポン レストラン",
    sun:"11.00-15.00,17.30-24.00",
    mon:"-1",
    tue:"11.00-15.00,17.30-24.00",
    wed:"11.00-15.00,17.30-24.00",
    thu:"11.00-15.00,17.30-24.00",
    fry:"11.00-15.00,17.30-24.00",
    sat:"11.00-15.00,17.30-24.00",
    latitude:36.090788,
    longitude:140.110243,
    address:"茨城県つくば市天久保１丁目５−５−３ 天久保ＢＡＲ",
    category:"エスニック",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8015547/",
    tel: "029-859-3311",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/28529/150x150_square_28529815.jpg"
)

Restaurant.create(
    name:"貴楽-たから-",
    sun:"18.00-23.59",
    mon:"0.00-2.00,18.00-23.59",
    tue:"0.00-2.00,18.00-23.59",
    wed:"0.00-2.00,18.00-23.59",
    thu:"0.00-2.00,18.00-23.59",
    fry:"0.00-3.00,18.00-23.59",
    sat:"0.00-3.00,18.00-23.59",
    latitude:36.0908668,
    longitude:140.1093607,
    address:"茨城県つくば市天久保１丁目５−２",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8014065/",
    tel: "029-859-3311",
    img:"https://tblg.k-img.com/resize/660x370c/restaurant/images/Rvw/39987/39987999.jpg"
)

Restaurant.create(
    name:"もいせ",
    sun:"-1",
    mon:"-1",
    tue:"-1",
    wed:"-1",
    thu:"-1",
    fry:"-1",
    sat:"-1",
    latitude:36.0908668,
    longitude:140.1093607,
    address:"茨城県つくば市天久保１丁目５−４",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8009961/",
    tel: "029-859-3311",
    img:"https://www.hotpepper.jp/IMGH/50/59/P030335059/P030335059_238.jpg"
)

Restaurant.create(
    name:"炭火焼たかすみ",
    sun:"0.00-1.00,17:00-23.59",
    mon:"0.00-1.00,17:00-23.59",
    tue:"0.00-1.00,17:00-23.59",
    wed:"0.00-1.00,17:00-23.59",
    thu:"0.00-1.00,17:00-23.59",
    fry:"0.00-1.00,17:00-23.59",
    sat:"0.00-1.00,17:00-23.59",
    latitude:36.0908668,
    longitude:140.1093607,
    address:"茨城県つくば市天久保１丁目５−３ 河田ビル１階",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8011835/",
    tel: "029-859-3311",
    img:"https://ximg.retty.me/crop/s200x200/-/retty/img_repo/l/01/5518688.jpg"
)

Restaurant.create(
    name:"インディアン レストラン ミラ",
    sun:"11.00-15.00,17.00-23.00",
    mon:"11.00-15.00,17.00-23.00",
    tue:"11.00-15.00,17.00-23.00",
    wed:"11.00-15.00,17.00-23.00",
    thu:"11.00-15.00,17.00-23.00",
    fry:"11.00-15.00,17.00-23.00",
    sat:"11.00-15.00,17.00-23.00",
    latitude:36.0913868,
    longitude:140.1109428,
    address:"茨城県つくば市天久保１丁目１６−７",
    category:"エスニック",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8002396/",
    tel: "029-859-3311",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/109995/150x150_square_109995206.jpg"
)

Restaurant.create(
    name:"松屋食堂",
    sun:"7.00-14.00",
    mon:"-1",
    tue:"7.00-14.00",
    wed:"7.00-14.00",
    thu:"7.00-14.00",
    fry:"7.00-14.00",
    sat:"7.00-14.00",
    latitude:36.0907165,
    longitude:140.1080637,
    address:"茨城県つくば市天久保１丁目６−１５",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8018725/",
    tel: "029-859-3311",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/111044/150x150_square_111044348.jpg"
)

Restaurant.create(
    name:"はなぶさ",
    sun:"-1",
    mon:"18.00-23.59",
    tue:"18.00-23.59",
    wed:"18.00-23.59",
    thu:"18.00-23.59",
    fry:"18.00-23.59",
    sat:"18.00-23.59",
    latitude:36.0907335,
    longitude:140.1089853,
    address:"茨城県つくば市天久保１丁目６−１５",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8003333/",
    tel: "029-859-3311",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/99800/150x150_square_99800038.jpg"
)

Restaurant.create(
    name:"居酒屋きく乃家",
    sun:"11.00-15.00,17.30-24.00",
    mon:"-1",
    tue:"11.00-15.00,17.30-24.00",
    wed:"11.00-15.00,17.30-24.00",
    thu:"11.00-15.00,17.30-24.00",
    fry:"11.00-15.00,17.30-24.00",
    sat:"11.00-15.00,17.30-24.00",
    latitude:36.090936,
    longitude:140.1094002,
    address:"茨城県つくば市天久保１丁目６−１５",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8006480/",
    tel: "029-859-3311",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/11661/150x150_square_11661618.jpg"
)

Restaurant.create(
    name:"焼きもの家 慶",
    sun:"-1",
    mon:"11.45-14.00,17.00-23.59",
    tue:"11.45-14.00,17.00-23.59",
    wed:"11.45-14.00,17.00-23.59",
    thu:"11.45-14.00,17.00-23.59",
    fry:"11.45-14.00,17.00-23.59",
    sat:"11.45-14.00,17.00-23.59",
    latitude:36.0909277,
    longitude:140.1096712,
    address:"茨城県つくば市天久保１丁目６−１３ くいだおれ3号館 1F",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8016801/",
    tel: "029-859-3311",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/109221/150x150_square_109221732.jpg"
)

Restaurant.create(
    name:"ほしまる☆カフェ",
    sun:"-1",
    mon:"10.30-17.00",
    tue:"10.30-17.00",
    wed:"10.30-17.00",
    thu:"10.30-17.00",
    fry:"10.30-17.00",
    sat:"10.30-17.00",
    latitude:36.0862875,
    longitude:140.1108027,
    address:"茨城県つくば市吾妻２丁目９",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8020662/",
    tel: "029-855-2441",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/109705/150x150_square_109705308.jpg"
)

Restaurant.create(
    name:"本格インド料理SAINO",
    sun:"11.00-23.00",
    mon:"11.00-23.00",
    tue:"11.00-23.00",
    wed:"11.00-23.00",
    thu:"11.00-23.00",
    fry:"11.00-23.00",
    sat:"11.00-23.00",
    latitude:36.0831165,
    longitude:140.1097167,
    address:"茨城県つくば市吾妻１丁目６−１ クレオスクエア",
    category:"エスニック",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8012067/",
    tel: "029-856-2353",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/95622/320x320_square_95622899.jpg"
)

Restaurant.create(
    name:"ラケル つくばキュート店",
    sun:"11.00-23.00",
    mon:"11.00-23.00",
    tue:"11.00-23.00",
    wed:"11.00-23.00",
    thu:"11.00-23.00",
    fry:"11.00-23.00",
    sat:"11.00-23.00",
    latitude:36.0831165,
    longitude:140.1097167,
    address:"茨城県つくば市吾妻１丁目６−１ つくばクレオスクエアＱ't ３F",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8000164/",
    tel: "029-861-7357",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/67298/150x150_square_67298959.jpg"
)

Restaurant.create(
    name:"サイゼリヤ つくばキュート店",
    sun:"11.00-23.00",
    mon:"11.00-23.00",
    tue:"11.00-23.00",
    wed:"11.00-23.00",
    thu:"11.00-23.00",
    fry:"11.00-23.00",
    sat:"11.00-23.00",
    latitude:36.0908668,
    longitude:140.1093607,
    address:"茨城県つくば市吾妻１丁目６−１",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8013453/",
    tel: "029-848-6155",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/43727/150x150_square_43727201.jpg"
)

Restaurant.create(
    name:"中国料理 桃花林",
    sun:"11.30-14.00,17.30-20.00",
    mon:"11.30-14.00,17.30-20.00",
    tue:"11.30-14.00,17.30-20.00",
    wed:"11.30-14.00,17.30-20.00",
    thu:"11.30-14.00,17.30-20.00",
    fry:"11.30-14.00,17.30-20.00",
    sat:"11.30-14.00,17.30-20.00",
    latitude:36.0830363,
    longitude:140.1111593,
    address:"茨城県つくば市吾妻１丁目１３６４−１ アネックス2F",
    category:"中華",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8000696/",
    tel: "029-852-6001",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/65259/150x150_square_65259069.jpg"
)

Restaurant.create(
    name:"スパニッシュバル・ボニート（ＳｐａｎｉｓｈＢａｒＢｏｎｉｔｏ）",
    sun:"11.30-14.30,17.30-23.30",
    mon:"11.30-14.30,17.30-23.30",
    tue:"11.30-14.30,17.30-23.30",
    wed:"11.30-14.30,17.30-23.30",
    thu:"11.30-14.30,17.30-23.30",
    fry:"11.30-14.30,17.30-23.30",
    sat:"11.30-14.30,17.30-23.30",
    latitude:36.0908668,
    longitude:140.1093607,
    address:"茨城県つくば市東新井１７−３ テナント1－A クローバ",
    category:"エスニック",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8017595/",
    tel: "029-896-8855",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/63520/150x150_square_63520358.jpg"
)

Restaurant.create(
    name:"ラーメン 龍郎",
    sun:"11.30-14.30,17.30-22.00",
    mon:"11.30-14.30,17.30-22.00",
    tue:"11.30-14.30,17.30-22.00",
    wed:"11.30-14.30,17.30-22.00",
    thu:"11.30-14.30,17.30-22.00",
    fry:"11.30-14.30,17.30-22.00",
    sat:"11.30-14.30,17.30-22.00",
    latitude:36.0889686,
    longitude:140.1100533,
    address:"茨城県つくば市吾妻３丁目８−１",
    category:"ラーメン",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8011732/",
    tel: "029-859-3311",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/106183/150x150_square_106183601.jpg"
)

Restaurant.create(
    name:"きなり",
    sun:"11.00-14.00,17.00-20.00",
    mon:"-1",
    tue:"11.00-14.00,17.00-20.00",
    wed:"11.00-14.00,17.00-20.00",
    thu:"11.00-14.00,17.00-20.00",
    fry:"11.00-14.00,17.00-20.00",
    sat:"11.00-14.00,17.00-20.00",
    latitude:36.0908668,
    longitude:140.1093607,
    address:"茨城県つくば市吾妻１丁目６−１",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8000723/",
    tel: "029-851-1199",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/5839/150x150_square_5839827.jpg"
)

Restaurant.create(
    name:"Yuzu",
    sun:"11.00-21.00",
    mon:"-1",
    tue:"11.00-15.00,17.00-21.00",
    wed:"11.00-15.00,17.00-21.00",
    thu:"11.00-15.00,17.00-21.00",
    fry:"11.00-15.00,17.00-21.00",
    sat:"11.00-21.00",
    latitude:36.1333701,
    longitude:140.07721,
    address:"茨城県つくば市筑穂２丁目２−３",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8002904/",
    tel: "029-879-0933",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/59273/150x150_square_59273819.jpg"
)

Restaurant.create(
    name:"月の華",
    sun:"11.00-14.00,17.00-23.00",
    mon:"-1",
    tue:"11.00-14.00,17.00-23.00",
    wed:"11.00-14.00,17.00-23.00",
    thu:"11.00-14.00,17.00-23.00",
    fry:"11.00-14.00,17.00-23.00",
    sat:"11.00-14.00,17.00-23.00",
    latitude:36.1333701,
    longitude:140.07721,
    address:"茨城県つくば市筑穂１丁目１０−３",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8009524/",
    tel: "029-864-2421",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/57862/150x150_square_57862083.jpg"
)

Restaurant.create(
    name:"ラ・シャロント",
    sun:"11.30-15.00,17.30-22.00",
    mon:"-1",
    tue:"11.30-15.00,17.30-22.00",
    wed:"11.30-15.00,17.30-22.00",
    thu:"11.30-15.00,17.30-22.00",
    fry:"11.30-15.00,17.30-22.00",
    sat:"11.30-15.00,17.30-22.00",
    latitude:36.1333701,
    longitude:140.07721,
    address:"茨城県つくば市筑穂３丁目１−６",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8000776/",
    tel: "029-864-8778",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/56266/150x150_square_56266918.jpg"
)

Restaurant.create(
    name:"オステリアヴィッテロ",
    sun:"-1",
    mon:"6.30-9.00,11.30-14.00,18.00-23.00",
    tue:"6.30-9.00,11.30-14.00,18.00-23.00",
    wed:"6.30-9.00,11.30-14.00,16.00-23.00",
    thu:"6.30-9.00,11.30-14.00,18.00-23.00",
    fry:"6.30-9.00,11.30-14.00,18.00-23.00",
    sat:"6.30-9.00,11.30-14.00,18.00-23.00",
    latitude:36.1333701,
    longitude:140.07721,
    address:"茨城県つくば市筑穂３丁目１−６",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8016927/",
    tel: "029-877-0611",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/38174/150x150_square_38174220.jpg"
)

Restaurant.create(
    name:"串焼眞衣千",
    sun:"17.30-23.00",
    mon:"-1",
    tue:"17.30-23.00",
    wed:"17.30-23.00",
    thu:"17.30-23.00",
    fry:"17.30-23.00",
    sat:"17.30-23.00",
    latitude:36.1338405,
    longitude:140.07921,
    address:"茨城県つくば市筑穂２丁目４−２",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8009490/",
    tel: "029-864-3379",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/2695/150x150_square_2695656.jpg"
)

Restaurant.create(
    name:"割烹かつとよ",
    sun:"11.00-14.00,17.00-23.00",
    mon:"11.00-14.00,17.00-23.00",
    tue:"11.00-14.00,17.00-23.00",
    wed:"11.00-14.00,17.00-23.00",
    thu:"11.00-14.00,17.00-23.00",
    fry:"11.00-14.00,17.00-23.00",
    sat:"11.00-14.00,17.00-23.00",
    latitude:36.0745079,
    longitude:140.1666883,
    address:"茨城県土浦市上高津１７２１",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080202/8009528/",
    tel:"029-824-0073",
    img:"https://lh5.googleusercontent.com/p/AF1QipPLxRLSOG-5gRcv6QwbCaa7sLlY8_Z1wbQFXiYr=w426-h240-k-no"
)

Restaurant.create(
    name:"医学食堂",
    sun:"-1",
    mon:"11.00-15.00",
    tue:"11.00-15.00",
    wed:"11.00-15.00",
    thu:"11.00-15.00",
    fry:"11.00-15.00",
    sat:"-1",
    latitude:36.0924274,
    longitude:140.1011412,
    address:"茨城県つくば市天久保２丁目１−１ 筑波大学 平砂宿舎共用棟 1F",
    category:"和食",
    url:"http://www.tsukuba-koseikai.com/store/store_71",
    tel:"029-855-6308",
    img:"https://www.kindai-coop.jp/shop/images/shop13-photo.jpg"
)

Restaurant.create(
    name:"アリーズ・ケバブ つくば店",
    sun:"11.00-23.00",
    mon:"11.00-23.00",
    tue:"11.00-23.00",
    wed:"-1",
    thu:"11.00-23.00",
    fry:"11.00-23.00",
    sat:"11.00-23.00",
    latitude:36.0978711,
    longitude:140.1080255,
    address:"茨城県つくば市天久保２丁目８−６",
    category:"エスニック",
    url:"http://alis-kebab.com",
    tel:"029-845-2654",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/65545/150x150_square_65545669.jpg"
)

Restaurant.create(
    name:"吉野家 つくば天久保店",
    sun:"0.00-23.59",
    mon:"0.00-23.59",
    tue:"0.00-23.59",
    wed:"0.00-23.59",
    thu:"0.00-23.59",
    fry:"0.00-23.59",
    sat:"0.00-23.59",
    latitude:36.0978711,
    longitude:140.1080255,
    address:"茨城県つくば市天久保２丁目１５−１",
    category:"和食",
    url:"https://stores.yoshinoya.com/ysn_046954",
    tel:"029-893-3129",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/92860/150x150_square_92860597.jpg"
)

Restaurant.create(
    name:"さん吉つくば店",
    sun:"-1",
    mon:"17.00-23.00",
    tue:"17.00-23.00",
    wed:"17.00-23.00",
    thu:"17.00-23.00",
    fry:"17.00-23.00",
    sat:"17.00-23.00",
    latitude:36.08174,
    longitude:140.1152868,
    address:"茨城県つくば市天久保２丁目２−１８",
    category:"和食",
    url:"http://miki-planning.net",
    tel:"029-856-8820",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/36700/150x150_square_36700461.jpg"
)

Restaurant.create(
    name:"寅とさくら",
    sun:"-1",
    mon:"18.00-23.59",
    tue:"18.00-23.59",
    wed:"18.00-23.59",
    thu:"18.00-23.59",
    fry:"18.00-23.59",
    sat:"18.00-23.59",
    latitude:36.0883409,
    longitude:140.1114694,
    address:"茨城県つくば市天久保２丁目１１−１０",
    category:"和食",
    url:"http://tabelog.com/ibaraki/A0802/A080201/8008805/",
    tel:"029-855-7225",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/63987/150x150_square_63987798.jpg"
)

Restaurant.create(
    name:"ココス 学園天久保店",
    sun:"0.00-1.00,10.00-23.59",
    mon:"0.00-1.00,10.00-23.59",
    tue:"0.00-1.00,10.00-23.59",
    wed:"0.00-1.00,10.00-23.59",
    thu:"0.00-1.00,10.00-23.59",
    fry:"0.00-1.00,10.00-23.59",
    sat:"0.00-1.00,10.00-23.59",
    latitude:36.093709,
    longitude:140.1057095,
    address:"茨城県つくば市天久保２丁目１７−１",
    category:"洋食",
    url:"http://as.chizumaru.com/cocos/detailMap?account=cocos&accmd=0&bid=ID0300007",
    tel:"029-850-1904",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/39815/150x150_square_39815640.jpg"
)
Restaurant.create(
  name:"筑波大学第２エリア大食堂",
  sun:"-1",
  mon:"8.20-18.40",
  tue:"8.20-18.40",
  wed:"8.20-18.40",
  thu:"8.20-18.40",
  fry:"8.20-18.40",
  sat:"10.00-13.30",
  latitude:36.0982527,
  longitude:140.0738584,
  address:"茨城県つくば市天王台１丁目　２Ｂ棟１Ｆ",
  category:"和食",
  url:"http://www.tsukuba-koseikai.com/store/store_21",
  tel:"029-858-0871",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/2247/150x150_square_2247231.jpg"
)
Restaurant.create(
  name:"筑波大学第１エリア大食堂",
  sun:"-1",
  mon:"11.00-14.00",
  tue:"11.00-14.00",
  wed:"11.00-14.00",
  thu:"11.00-14.00",
  fry:"11.00-14.00",
  sat:"-1",
  latitude:36.1077894,
  longitude:140.1018181,
  address:"茨城県つくば市天王台１丁目　１Ａ棟１Ｆ",
  category:"和食",
  url:"http://www.tsukuba-koseikai.com/store/store_11",
  tel:"029-858-0860",
  img:"https://cdn.4travel.jp/img/thumbnails/imk/tips_pict/14/39/47/220x220_14394704.jpg"
)
Restaurant.create(
  name:"筑波大学第３エリア大食堂",
  sun:"-1",
  mon:"9.30-17.00",
  tue:"9.30-17.00",
  wed:"9.30-17.00",
  thu:"9.30-17.00",
  fry:"9.30-17.00",
  sat:"11.00-14.00",
  latitude:36.1108335,
  longitude:140.0988244,
  address:"茨城県つくば市天王台１丁目　３Ａ棟１Ｆ",
  category:"和食",
  url:"http://www.tsukuba-koseikai.com/store/store_31",
  tel:"029-853-2111",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/98597/150x150_square_98597841.jpg"
)

Restaurant.create(
    name:"小菊",
    sun:"17.30-23.00",
    mon:"17.30-23.00",
    tue:"17.30-23.00",
    wed:"17.30-23.00",
    thu:"17.30-23.00",
    fry:"17.30-23.00",
    sat:"17.30-23.00",
    latitude:36.0767082,
    longitude:140.1174611,
    address:"茨城県つくば市竹園２丁目１１−１２",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8007696/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/71306/150x150_square_71306722.jpg"
)
Restaurant.create(
    name:"kandy spice",
    sun:"11.00-15.00,17.30-21.00",
    mon:"11.00-15.00,17.30-21.00",
    tue:"11.00-15.00,17.30-21.00",
    wed:"-1",
    thu:"11.00-15.00,17.30-21.00",
    fry:"11.00-15.00,17.30-21.00",
    sat:"11.00-15.00,17.30-21.00",
    latitude:36.0767082,
    longitude:140.1174611,
    address:"茨城県つくば市竹園２丁目１６−３",
    category:"エスニック",
    url:"https://tabelog.com/aomori/A0202/A020201/2009577/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/73891/150x150_square_73891281.jpg"
)
Restaurant.create(
    name:"居酒屋大将別館",
    sun:"17.00-23.30",
    mon:"-1",
    tue:"17.00-23.30",
    wed:"17.00-23.30",
    thu:"17.00-23.30",
    fry:"17.00-23.59",
    sat:"17.00-23.59",
    latitude:36.0768354,
    longitude:140.1183297,
    address:"茨城県つくば市竹園２丁目７−２０",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8003617/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/110970/150x150_square_110970906.jpg"
)
Restaurant.create(
    name:"居酒屋桜",
    sun:"11.00-16.00",
    mon:"11.00-16.00",
    tue:"11.00-16.00",
    wed:"-1",
    thu:"11.00-16.00",
    fry:"11.00-16.00",
    sat:"11.00-16.00",
    latitude:36.0768354,
    longitude:140.1183297,
    address:"茨城県つくば市竹園２丁目４−１０",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8003617/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/110970/150x150_square_110970906.jpg"
)
Restaurant.create(
    name:"炭火焼 日本酒 山鶴",
    sun:"-1",
    mon:"18.00-23.59,0.00-2.00",
    tue:"18.00-23.59,0.00-2.00",
    wed:"18.00-23.59,0.00-2.00",
    thu:"18.00-23.59,0.00-2.00",
    fry:"18.00-23.59,0.00-2.00",
    sat:"18.00-23.59,0.00-2.00",
    latitude:36.0768354,
    longitude:140.1183297,
    address:"茨城県つくば市竹園２丁目１１−１１−２１ 竹園アイステナント007",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8016557/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/51521/150x150_square_51521307.jpg"
)
Restaurant.create(
    name:"創作酒房 るし庵",
    sun:"17.30-23.59",
    mon:"17.30-23.59",
    tue:"17.30-23.59",
    wed:"-1",
    thu:"17.30-23.59",
    fry:"17.30-23.59,0.00-1.00",
    sat:"17.30-23.59,0.00-1.00",
    latitude:36.0768354,
    longitude:140.1183297,
    address:"茨城県つくば市竹園２丁目６−１０",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8018814/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/76184/150x150_square_76184259.jpg"
)
Restaurant.create(
    name:"晩酌屋ふらり",
    sun:"16.00-23.59,0.00-1.00",
    mon:"16.00-23.59,0.00-1.00",
    tue:"16.00-23.59,0.00-1.00",
    wed:"16.00-23.59,0.00-1.00",
    thu:"16.00-23.59,0.00-1.00",
    fry:"16.00-23.59,0.00-1.00",
    sat:"16.00-23.59,0.00-1.00",
    latitude:36.0762311,
    longitude:140.114801,
    address:"茨城県つくば市竹園１丁目９−２",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8019356/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/93300/150x150_square_93300307.jpg"
)
Restaurant.create(
    name:"Grill&Dining 満天屋",
    sun:"11.00-15.00,17.00-23.00",
    mon:"11.00-15.00,17.00-23.00",
    tue:"11.00-15.00,17.00-23.00",
    wed:"11.00-15.00,17.00-23.00",
    thu:"11.00-15.00,17.00-23.00",
    fry:"11.00-15.00,17.00-23.00",
    sat:"11.00-15.00,17.00-23.00",
    latitude:36.0768197,
    longitude:140.1147576,
    address:"2 ９ 1, １丁目-９ 竹園 つくば市 茨城県 305-0032",
    category:"エスニック",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8020843/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/107036/150x150_square_107036198.jpg"
)
Restaurant.create(
    name:"常陸之國 もんどころ つくばデイズタウン店",
    sun:"17.00-23.59,0.00-1.00",
    mon:"17.00-23.59,0.00-1.00",
    tue:"17.00-23.59,0.00-1.00",
    wed:"17.00-23.59,0.00-1.00",
    thu:"17.00-23.59,0.00-1.00",
    fry:"17.00-23.59,0.00-1.00",
    sat:"17.00-23.59,0.00-1.00",
    latitude:36.0768197,
    longitude:140.1147576,
    address:"茨城県つくば市竹園１丁目９−２ デイズタウンつくば1F",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8014016/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/107863/320x320_square_107863824.jpg"
)
Restaurant.create(
    name:"季彩 かがり",
    sun:"11.30-14.00,17.00-23.59",
    mon:"11.30-14.00,17.00-23.59",
    tue:"11.30-14.00,17.00-23.59",
    wed:"11.30-14.00,17.00-23.59",
    thu:"11.30-14.00,17.00-23.59",
    fry:"11.30-14.00,17.00-23.59",
    sat:"11.30-14.00,17.00-23.59",
    latitude:336.0768197,
    longitude:140.1147576,
    address:"茨城県B1F竹園１丁目９−２ デイズタウンつくば",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8009688/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/100922/150x150_square_100922495.jpg"
)
Restaurant.create(
    name:"タイ料理つくばパクチー",
    sun:"11.30-23.59",
    mon:"11.30-23.59",
    tue:"11.30-23.59",
    wed:"11.30-23.59",
    thu:"11.30-23.59",
    fry:"11.30-23.59",
    sat:"11.30-23.59",
    latitude:36.0770118,
    longitude:140.1148382,
    address:"茨城県つくば市竹園１丁目９ 竹園1-9-2 デイズタウンB1",
    category:"エスニック",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8021227/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/97462/150x150_square_97462008.jpg"
)
Restaurant.create(
    name:"モッツバー 高の家 つくば本店",
    sun:"17.00-23.59,0.00-2.00",
    mon:"17.00-23.59,0.00-2.00",
    tue:"17.00-23.59,0.00-2.00",
    wed:"17.00-23.59,0.00-2.00",
    thu:"17.00-23.59,0.00-2.00",
    fry:"17.00-23.59,0.00-2.00",
    sat:"17.00-23.59,0.00-2.00",
    latitude:36.0770118,
    longitude:140.1148382,
    address:"茨城県つくば市竹園１丁目９−２",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8001558/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/resize/660x370c/restaurant/images/Rvw/29489/29489493.jpg?token=06079f3&api=v2"
)
Restaurant.create(
    name:"魚民 つくばデイズタウン店",
    sun:"17.00-23.59,0.00-5.00",
    mon:"17.00-23.59,0.00-5.00",
    tue:"17.00-23.59,0.00-5.00",
    wed:"17.00-23.59,0.00-5.00",
    thu:"17.00-23.59,0.00-5.00",
    fry:"17.00-23.59,0.00-5.00",
    sat:"17.00-23.59,0.00-5.00",
    latitude:36.0770118,
    longitude:140.1148382,
    address:"茨城県つくば市竹園１丁目９−２",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8002069/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/18601/150x150_square_18601050.jpg"
)
Restaurant.create(
    name:"びすとろ椿々 cin‐cin",
    sun:"-1",
    mon:"17.00-23.59",
    tue:"17.00-23.59",
    wed:"17.00-23.59",
    thu:"17.00-23.59",
    fry:"17.00-23.59",
    sat:"17.00-23.59",
    latitude:36.0767082,
    longitude:140.1174611,
    address:"茨城県つくば市竹園１丁目９−７ 林ビル",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0803/A080301/8015916/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/83698/150x150_square_83698209.jpg"
)
Restaurant.create(
    name:"目利きの銀次 つくばデイズタウン店",
    sun:"11.00-23.59",
    mon:"11.00-23.59",
    tue:"11.00-23.59",
    wed:"11.00-23.59",
    thu:"11.00-23.59",
    fry:"11.00-23.59",
    sat:"11.00-23.59",
    latitude:36.0770118,
    longitude:140.1148382,
    address:"茨城県つくば市竹園１丁目９−１ デイズタウンアネックスA棟",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8021569/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/107302/150x150_square_107302325.jpg"
)
Restaurant.create(
    name:"大衆おでん・やきとり 酒場はなび",
    sun:"17.30-23.00",
    mon:"17.30-23.00",
    tue:"17.30-23.00",
    wed:"17.30-23.00",
    thu:"17.30-23.00",
    fry:"17.30-23.00",
    sat:"17.30-23.00",
    latitude:36.0773563,
    longitude:140.1143317,
    address:"茨城県つくば市竹園１丁目９−９−２ デイズタウンつくば B1",
    category:"和食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8019994/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/98351/150x150_square_98351711.jpg"
)
Restaurant.create(
    name:"肉バル・ワイン Rib’s つくば駅前デイズタウン",
    sun:"17.00-23.59,0.00-1.00",
    mon:"17.00-23.59,0.00-1.00",
    tue:"17.00-23.59,0.00-1.00",
    wed:"17.00-23.59,0.00-1.00",
    thu:"17.00-23.59,0.00-1.00",
    fry:"17.00-23.59,0.00-1.00",
    sat:"17.00-23.59,0.00-1.00",
    latitude:36.0773563,
    longitude:140.1143317,
    address:"茨城県つくば市竹園１丁目９−２",
    category:"洋食",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8016305/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/112201/150x150_square_112201862.jpg"
)
Restaurant.create(
    name:"アジアンリゾートダイニング Monster ～モンスター～",
    sun:"11.00-15.00,17.30-23.59,0.00-2.00",
    mon:"11.00-15.00,17.30-23.59,0.00-2.00",
    tue:"11.00-15.00,17.30-23.59,0.00-2.00",
    wed:"11.00-15.00,17.30-23.59,0.00-2.00",
    thu:"11.00-15.00,17.30-23.59,0.00-2.00",
    fry:"11.00-15.00,17.30-23.59,0.00-2.00",
    sat:"11.00-15.00,17.30-23.59,0.00-2.00",
    latitude:36.0775121,
    longitude:140.114682,
    address:"茨城県つくば市竹園１丁目９−２ デイズタウンB1",
    category:"エスニック",
    url:"https://tabelog.com/ibaraki/A0802/A080201/8010559/",
    tel:"029-824-0073",
    img:"https://tblg.k-img.com/restaurant/images/Rvw/102075/150x150_square_102075802.jpg"
)
Restaurant.create(
  name:"カレーハウス CoCo壱番屋 つくば桜店",
  sun:"11.00-23.59",
  mon:"11.00-23.59",
  tue:"11.00-23.59",
  wed:"11.00-23.59",
  thu:"11.00-23.59",
  fry:"11.00-23.59",
  sat:"11.00-23.59",
  latitude:36.1138965,
  longitude:140.1155578,
  address:"つくば市桜３丁目１０−１",
  category:"エスニック",
  url:"https://r.gnavi.co.jp/ga0p800/",
  tel:"050-3463-7288",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/106197/150x150_square_106197055.jpg"
)
Restaurant.create(
  name:"バンザイ ナポリタン",
  sun:"11.00-15.00,17.30-22.00",
  mon:"11.00-15.00,17.30-22.00",
  tue:"11.00-15.00,17.30-22.00",
  wed:"11.00-15.00,17.30-22.00",
  thu:"11.00-15.00,17.30-22.00",
  fry:"11.00-15.00,17.30-22.00",
  sat:"11.00-15.00,17.30-22.00",
  latitude:36.113061,
  longitude:140.1157997,
  address:"つくば市桜３丁目８−４ 1F アグレアーブル",
  category:"洋食",
  url:"https://tabelog.com/ibaraki/A0802/A080201/8018763/",
  tel:"070-1345-0031",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/63237/150x150_square_63237523.jpg"
)
Restaurant.create(
  name:"手打ラーメン 珍来 テクノパーク桜店",
  sun:"11.30-23.00",
  mon:"11.30-23.00",
  tue:"11.30-23.00",
  wed:"11.30-23.00",
  thu:"11.30-23.00",
  fry:"11.30-23.00",
  sat:"11.30-23.00",
  latitude:36.1118678,
  longitude:140.1124902,
  address:"茨城県つくば市桜３丁目１５−２",
  category:"ラーメン",
  url:"http://hyakkoutei.gorp.jp",
  tel:"029-857-9934",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/75533/150x150_square_75533665.jpg"
)
Restaurant.create(
  name:"プンプイ",
  sun:"11.30-13.00,18.00-0.00",
  mon:"11.30-13.00,18.00-0.00",
  tue:"11.30-13.00,18.00-0.00",
  wed:"11.30-13.00,18.00-0.00",
  thu:"11.30-13.00,18.00-0.00",
  fry:"11.30-13.00,18.00-0.00",
  sat:"11.30-13.00,18.00-0.00",
  latitude:36.1118678,
  longitude:140.1124902,
  address:"茨城県つくば市桜１丁目２１−３",
  category:"エスニック",
  url:"https://tabelog.com/ibaraki/A0802/A080201/8005869/",
  tel:"029-857-8559",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/111745/150x150_square_111745795.jpg"
)
Restaurant.create(
  name:"網走屋",
  sun:"11.00-15.00,17.00-0.30",
  mon:"11.00-15.00,17.00-0.30",
  tue:"11.00-15.00,17.00-0.30",
  wed:"11.00-15.00,17.00-0.30",
  thu:"11.00-15.00,17.00-0.30",
  fry:"11.00-15.00,17.00-0.30",
  sat:"11.00-15.00,17.00-0.30",
  latitude:36.1118678,
  longitude:140.1124902,
  address:"茨城県つくば市桜２丁目１５ 茨城県つくば市桜2-15-3 1F",
  category:"中華",
  url:"https://tabelog.com/ibaraki/A0802/A080201/8020005/",
  tel:"029-857-5540",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/111745/150x150_square_111745795.jpg"
)
Restaurant.create(
  name:"創作中華 えん弥",
  sun:"11.00-15.00,17.00-0.30",
  mon:"11.00-15.00,17.00-0.30",
  tue:"11.00-15.00,17.00-0.30",
  wed:"11.00-15.00,17.00-0.30",
  thu:"11.00-15.00,17.00-0.30",
  fry:"11.00-15.00,17.00-0.30",
  sat:"11.00-15.00,17.00-0.30",
  latitude:36.1118678,
  longitude:140.1124902,
  address:"茨城県つくば市桜１丁目１３−７",
  category:"中華",
  url:"https://enya-tokodai.owst.jp",
  tel:"029-857-1618",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/106163/150x150_square_106163331.jpg"
)
Restaurant.create(
  name:"スリランカ・カリー アンマーカリヤ",
  sun:"11.30-14.00,17.30-20.30",
  mon:"11.30-14.00,17.30-20.30",
  tue:"11.30-14.00,17.30-20.30",
  wed:"11.30-14.00,17.30-20.30",
  thu:"11.30-14.00,17.30-20.30",
  fry:"11.30-14.00,17.30-20.30",
  sat:"11.30-14.00,17.30-20.30",
  latitude:36.1118678,
  longitude:140.1124902,
  address:"茨城県つくば市桜２丁目２−５１−１",
  category:"エスニック",
  url:"https://tabelog.com/ibaraki/A0802/A080201/8017805/",
  tel:"029-857-8977",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/107490/150x150_square_107490155.jpg"
)
Restaurant.create(
  name:"回転寿司かね喜つくば桜店",
  sun:"11.30-14.00,17.30-20.30",
  mon:"11.30-14.00,17.30-20.30",
  tue:"11.30-14.00,17.30-20.30",
  wed:"11.30-14.00,17.30-20.30",
  thu:"11.30-14.00,17.30-20.30",
  fry:"11.30-14.00,17.30-20.30",
  sat:"11.30-14.00,17.30-20.30",
  latitude:36.1110882,
  longitude:140.1120151,
  address:"茨城県つくば市桜１丁目２３−７",
  category:"和食",
  url:"https://sushi-kaneki.co.jp/sushi_bar",
  tel:"029-857-8977",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/79259/150x150_square_79259519.jpg"
)
Restaurant.create(
  name:"中華定食 笑飯店",
  sun:"11.00-14.30,17.00-22.00",
  mon:"11.00-14.30,17.00-22.00",
  tue:"11.00-14.30,17.00-22.00",
  wed:"11.00-14.30,17.00-22.00",
  thu:"11.00-14.30,17.00-22.00",
  fry:"11.00-14.30,17.00-22.00",
  sat:"11.00-14.30,17.00-22.00",
  latitude:36.1110882,
  longitude:140.1120151,
  address:"茨城県つくば市桜２丁目１５−３ １０７",
  category:"中華",
  url:"https://tabelog.com/ibaraki/A0802/A080201/8010332/",
  tel:"029-857-2255",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/90265/150x150_square_90265649.jpg"
)
Restaurant.create(
  name:"小五郎",
  sun:"11.30-14.00,17.30-22.30",
  mon:"11.30-14.00,17.30-22.30",
  tue:"11.30-14.00,17.30-22.30",
  wed:"11.30-14.00,17.30-22.30",
  thu:"11.30-14.00,17.30-22.30",
  fry:"11.30-14.00,17.30-22.30",
  sat:"11.30-14.00,17.30-22.30",
  latitude:36.1110882,
  longitude:140.1120151,
  address:"茨城県つくば市桜１丁目１２−１",
  category:"ラーメン",
  url:"https://mobile.twitter.com/menyakogorou",
  tel:"029-857-2255",
  img:"https://tblg.k-img.com/restaurant/images/Rvw/105038/150x150_square_105038265.jpg"
)
