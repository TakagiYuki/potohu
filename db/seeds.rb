# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Area.create!(
#   [{name: '北海道'}, {name: '青森県'}, {name: '岩手県'}, {name: '宮城県'}, {name: '秋田県'},
#    {name: '山形県'}, {name: '福島県'}, {name: '茨城県'}, {name: '栃木県'}, {name: '群馬県'},
#    {name: '埼玉県'}, {name: '千葉県'}, {name: '東京都'}, {name: '神奈川県'}, {name: '新潟県'},
#    {name: '富山県'}, {name: '石川県'}, {name: '福井県'}, {name: '山梨県'}, {name: '長野県'},
#    {name: '岐阜県'}, {name: '静岡県'}, {name: '愛知県'}, {name: '三重県'}, {name: '滋賀県'},
#    {name: '京都府'}, {name: '大阪府'}, {name: '兵庫県'}, {name: '奈良県'}, {name: '和歌山県'},
#    {name: '鳥取県'}, {name: '島根県'}, {name: '岡山県'}, {name: '広島県'}, {name: '山口県'},
#    {name: '徳島県'}, {name: '香川県'}, {name: '愛媛県'}, {name: '高知県'}, {name: '福岡県'},
#    {name: '佐賀県'}, {name: '長崎県'}, {name: '熊本県'}, {name: '大分県'}, {name: '宮崎県'},
#    {name: '鹿児島県'}, {name: '沖縄県'}
#   ]
# )

Area.create!(
  [{name: '北海道'}, {name: '東北'}, {name: '関東'}, {name: '中部'}, {name: '関西'},
   {name: '中国'}, {name: '四国'}, {name: '九州・沖縄'}
  ]
)

Event.create!(
  [{name: '小樽潮まつり', article: '初日に祭りの開催を知らせる「潮ふれこみ」、2日目に「潮ねりこみ」、最終日にレガッタ大会の「潮市民レガッタ」、漁船や屋形船による小樽港内パレードの「潮わたり」が行われる。',
    image:File.open("./app/assets/images/image001.jpg"),
    prefecture: '北海道', city: '小樽市', street: '2-22',
    date: "2020年8月24日", time_status: 1, area_id: 1},
    {name: '札幌夏祭り', article: '隅田川花火大（すみだがわはなびたいかい）は、東京都の隅田川沿い（台東区浅草（右岸）・墨田区向島（左岸）周辺）の河川敷において毎年7月最終土曜日に行われる花火大会である。毎年8月に開催される江戸川区花火大会とともに東京二大花火大会の一つに数えられる。',
    image:File.open("./app/assets/images/image004.jpg"),
    prefecture: '北海道', city:'札幌市', street:'今戸1-1-10',
    date: "2020年8月24日", time_status: 0, area_id: 1},
    {name: '北竜町ひまわりまつり', article: '隅田川花火大（すみだがわはなびたいかい）は、東京都の隅田川沿い（台東区浅草（右岸）・墨田区向島（左岸）周辺）の河川敷において毎年7月最終土曜日に行われる花火大会である。毎年8月に開催される江戸川区花火大会とともに東京二大花火大会の一つに数えられる。',
    image:File.open("./app/assets/images/image005.jpg"),
    prefecture: '北海道', city:'台東区', street:'今戸1-1-10',
    date: "2020年8月24日", time_status: 0, area_id: 1},
    {name: 'ねぶた', article: '隅田川花火大（すみだがわはなびたいかい）は、東京都の隅田川沿い（台東区浅草（右岸）・墨田区向島（左岸）周辺）の河川敷において毎年7月最終土曜日に行われる花火大会である。毎年8月に開催される江戸川区花火大会とともに東京二大花火大会の一つに数えられる。',
    image:File.open("./app/assets/images/image006.jpg"),
    prefecture: '青森', city:'台東区', street:'今戸1-1-10',
    date: "2020年8月24日", time_status: 0, area_id: 2},
  ]
)
