

if User.find_by(email: "admin@admin.com").nil?
    User.create!(
        name:  "admin_user",
        email: "admin@admin.com",
        password:              "admin98",
        password_confirmation: "admin98",
        admin: true
    )
end

if Area.find_by(name: '北海道').nil?
    Area.create!(
        [
            {name: '北海道'},
            {name: '東北'},
            {name: '関東'},
            {name: '中部'},
            {name: '関西'},
            {name: '中国'},
            {name: '四国'},
            {name: '九州・沖縄'}
        ]
    )
end

Event.create!(
  [{name: '青い池', article: 'この池は1988年12月に噴火した十勝岳の堆積物による火山泥流災害を防ぐため、美瑛川本流に複数建設された堰堤のひとつに水が溜まったものである。
この堰堤はコンクリートブロックによるもので、北海道開発局により1989年6月に着工され同年年末に完成した。美瑛川を横切る形で施工され、本流から離れた両岸の森林内部まで堰堤が造られた結果、',
    image:open("./public/aoiike.jpg"),
    prefecture: '北海道', city: '上川郡美瑛町白金', street: '1-1',
    area_id: 1},

    {name: '積丹半島', article: '積丹半島は北海道西部、後志総合振興局にある半島である。地名の由来はアイヌ語のシャク・コタン（夏の村）である。日本海に向かって突き出ており、地質学上では那須火山帯に属する後志火山群の延長上に位置する。半島部の全長は約30km、地形は平野部が少なく急峻で、中心では積丹岳や余別岳が脊梁をなし、沿岸は複雑な海岸線が連続する。そのため、風光明媚な景観に富み、海岸線一帯はニセコ積丹小樽海岸国定公園に指定されている。',
    image:open("./public/積丹半島.jpg"),
    prefecture: '北海道', city:'積丹町大字野塚町', street:'212-1',
    area_id: 1},
    {name: 'ファーム富田', article: 'ファーム富田は、北海道空知郡中富良野町にある農園。主にラベンダーを中心とした花を呼び物に、春から秋にかけて開園する。園内にはドライフラワーを使用した土産屋や資料館も位置しており、営業時間内は入園無料である。所在地は北海道空知郡中富良野町北星。',
    image:open("./public/ファーム富田.jpg"),
    prefecture: '北海道', city:'中富良野町', street:'基線北15号',
    area_id: 1},
  ]
)
