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

if Season.find_by(name: '1月').nil?
  Season.create!(
    [
      {name: '1月'},
      {name: '2月'},
      {name: '3月'},
      {name: '4月'},
      {name: '5月'},
      {name: '6月'},
      {name: '7月'},
      {name: '8月'},
      {name: '9月'},
      {name: '10月'},
      {name: '11月'},
      {name: '12月'}
    ]
  )
end
   tag1 = Tag.new({name: '自然'})
   File.open(Rails.root.join("public/tag_01.jpg"), "rb") do |file|
       tag1.image = file
   end
   tag1.save

   tag2 = Tag.new({name: '歴史'})
   File.open(Rails.root.join("public/tag_02.jpg"), "rb") do |file|
       tag2.image = file
   end
   tag2.save

   tag3 = Tag.new({name: '体験'})
   File.open(Rails.root.join("public/tag_03.jpg"), "rb") do |file|
       tag3.image = file
   end
   tag3.save

   tag4 = Tag.new({name: '舞台'})
   File.open(Rails.root.join("public/tag_04.jpg"), "rb") do |file|
       tag4.image = file
   end
   tag4.save


Event.create!(
  [
    {name: '中尊寺', article: '中尊寺は、岩手県西磐井郡平泉町にある天台宗東北大本山の寺院。奥州三十三観音番外札所。山号は関山、本尊は釈迦如来 。寺伝では円仁の開山とされる。実質的な開基は藤原清衡。 奥州藤原氏三代ゆかりの寺として著名であり、平安時代の美術、工芸、建築の粋を集めた金色堂を始め、多くの文化財を有する。',
    image:open("./public/中尊寺.jpg"),
    prefecture: '岩手県', city: '西磐井郡平泉町', street: '平泉衣関202',
    area_id: 2},
    {name: '青い池', article: 'この池は1988年12月に噴火した十勝岳の堆積物による火山泥流災害を防ぐため、美瑛川本流に複数建設された堰堤のひとつに水が溜まったものである。
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
    {name: '札幌市時計台', article: '札幌市時計台は、北海道札幌市中央区北1条西2丁目にある歴史的建造物である。重要文化財。 正式名称を「旧札幌農学校演武場」と称する。現在の通称は「札幌時計台」、もしくは単に「時計台」と呼ばれ、たくさんの観光人が訪れる名所になった。',
    image:open("./public/札幌市時計台.jpg"),
    prefecture: '北海道', city:'札幌市', street:'中央区北1条西2丁目',
    area_id: 1},

    {name: '浄土ヶ浜', article: '浄土ヶ浜は、岩手県宮古市にある海岸。国の名勝に指定されている。三陸復興国立公園に属し、三陸を代表する景勝地の1つである。',
    image:open("./public/浄土ヶ浜.jpg"),
    prefecture: '岩手県', city:'宮古市', street:'日立浜町32',
    area_id: 2},

    {name: '仙台城', article: '仙台城は、現在の宮城県仙台市青葉区の青葉山にあった日本の城である。雅称は「青葉城」で「五城楼」の別名もある。 国の史跡。',
    image:open("./public/仙台城.jpg"),
    prefecture: '宮城県', city: '仙台市', street: '青葉区川内1',
    area_id: 2},
    {name: '蔵王の御釜', article: '御釜は、宮城県刈田郡蔵王町と同県柴田郡川崎町の境界付近にある火口湖で、五色沼とも呼ばれる。蔵王連峰の中央部の最も標高の高いエリアにあり、しばしば蔵王連峰の象徴として見られている。宮城県と山形県の県境から至近であり、宮城県のみならず山形県の名所としても紹介される。',
    image:open("./public/蔵王の御釜.jpg"),
    prefecture: '宮城県', city:'刈田郡蔵王町', street:'遠刈田温泉倉石岳国有地内国有林内',
    area_id: 2},
    {name: '仙台うみの杜水族館', article: '仙台うみの杜水族館は、宮城県仙台市宮城野区高砂中央公園内に所在する民間水族館である。横浜八景島と仙台水族館開発が連携して運営を行う。',
    image:open("./public/仙台うみの杜水族館.jpg"),
    prefecture: '宮城県', city:'仙台市', street:'宮城野区中野4丁目6',
    area_id: 2},

    {name: '千秋公園', article: '千秋公園は、秋田県秋田市にある都市公園である。',
    image:open("./public/千秋公園.jpg"),
    prefecture: '秋田県', city: '秋田市', street: '千秋公園1',
    area_id: 2},


    {name: 'なまはげ館', article: 'なまはげ館は、秋田県男鹿市にある資料館である。',
    image:open("./public/namahagekan.jpg"),
    prefecture: '秋田県', city:'男鹿市北浦', street:' 真山水喰沢',
    area_id: 2},
    {name: 'たつこ像', article: '永遠の若さと美貌を得るために泉の水を飲み干し、龍になったと伝えられる美しい娘・辰子の像。',
    image:open("./public/たつこ像.jpg"),
    prefecture: '秋田県', city:'仙北市', street:'西木町西明寺字潟尻',
    area_id: 2},

    {name: '銀山温泉', article: 'NHK連続テレビ小説『おしん』の舞台となったことで一躍脚光を浴び、 全国的にその名を知られることになった。',
    image:open("./public/銀山温泉.jpg"),
    prefecture: '山形県', city: '尾花沢市', street: '大字銀山新畑',
    area_id: 2},

    {name: '東京スカイツリー', article: '東京スカイツリーは、東京都墨田区押上1-1-2にある電波塔である。観光・商業施設やオフィスビルが併設されており、電波塔を含め周辺施設は「東京スカイツリータウン」と呼ばれている。2012年5月に電波塔・観光施設として開業した。',
    image:open("./public/東京スカイツリー.jpg"),
    prefecture: '東京都', city: '墨田区', street: '押上1丁目1-2',
    area_id: 3, pick_up: 1},
    {name: '東京タワー', article: '東京タワーは、東京都港区芝公園にある総合電波塔の愛称である。正式名称は日本電波塔。創設者は前田久吉。1958年12月23日竣工。東京のシンボル・観光名所として知られる。',
    image:open("./public/東京タワー.jpg"),
    prefecture: '東京都', city:'港区芝公園', street:'4丁目2-8',
    area_id: 3, pick_up: 1},
    {name: '新宿御苑', article: '新宿御苑は、東京都新宿区と渋谷区に跨がる環境省所管の庭園である。',
    image:open("./public/新宿御苑.jpg"),
    prefecture: '東京都', city:'新宿区', street:'内藤町11',
    area_id: 3},
    {name: '井の頭恩賜公園', article: '井の頭恩賜公園は、東京都武蔵野市と東京都三鷹市にまたがる都立公園である。 1917年5月1日開園。三宝寺池および善福寺池と並び、武蔵野三大湧水池として知られる井の頭池を中心とした公園である。東京都西部公園緑地事務所が管理している。日本さくら名所100選に選定されている。',
    image:open("./public/井の頭恩賜公園.jpg"),
    prefecture: '東京都', city:'武蔵野市', street:'御殿山1丁目18-31',
    area_id: 3},

    {name: '東京ディズニーランド', article:'東京ディズニーランドは、千葉県浦安市舞浜にあるディズニーリゾートを形成する日本のディズニーパーク。',
    image:open("./public/tokyodisneyland.jpg"),
    prefecture: '千葉県', city: '浦安市', street: '舞浜1-1',
    area_id: 3},

    {name: '鎌倉大仏殿高徳院', article:'高徳院は、神奈川県鎌倉市長谷にある浄土宗の寺院。本尊は「鎌倉大仏」「長谷の大仏」として知られる阿弥陀如来像。山号は大異山。詳しくは大異山高徳院清浄泉寺という。開基と開山はともに不詳である。 2004年2月27日、境内一帯が「鎌倉大仏殿跡」の名称で国の史跡に指定された。',
    image:open("./public/kamakuradaibutukoutokuin.jpg"),
    prefecture: '神奈川県', city: '鎌倉市', street: '長谷4丁目2−28',
    area_id: 4},

    {name: '国営越後丘陵公園', article:'国営越後丘陵公園は、新潟県長岡市にある国営公園。',
    image:open("./public/国営越後丘陵公園.jpg"),
    prefecture: '新潟県', city: '長岡市', street: '宮本東方町字三ツ又1950-1',
    area_id: 4},

    {name: '黒部ダム', article:'黒部ダムは、富山県東部の立山町を流れる黒部川水系の黒部川に建設された水力発電専用のダムである。1956年着工、太田垣士郎指揮のもと、171人の殉職者と7年の歳月をかけて、1961年1月に送電を開始し1963年に完成した。貯水量2億トン。 ',
    image:open("./public/kurobedamu.jpg"),
    prefecture: '富山県', city: '中新川郡立山町', street: '芦峅寺6',
    area_id: 4},

    {name: '兼六園', article:'兼六園は、石川県金沢市に存在する日本庭園である。国の特別名勝に指定されている。広さは約11.7ヘクタール。 17世紀中期、加賀藩によって金沢城の外郭に造営された藩庭を起源とする江戸時代を代表する池泉回遊式庭園であり、岡山市の後楽園と水戸市の偕楽園と並んで日本三名園の1つに数えられる。',
    image:open("./public/kenrokuen.jpg"),
    prefecture: '石川県', city: '金沢市', street: '兼六町1',
    area_id: 4},

    {name: '河童橋', article: '河童橋とは、長野県松本市安曇上高地の梓川に架かる木製の吊橋。',
    image:open("./public/kappabashi.jpg"),
    prefecture: '長野県', city: '松本市', street: '安曇上高地',
    area_id: 4, pick_up: 1},

    {name: '軽井沢銀座商店街', article: '観光スポットとして知られる商店街。地場の食材を使用する飲食店、食料品を含める土産物店、雑貨や衣料品を販売するショップが立ち並ぶ。',
    image:open("./public/syoutengai.jpg"),
    prefecture: '長野県', city:'北佐久郡軽井沢町', street:'大字軽井沢541',
    area_id: 4},
    {name: '白骨温泉', article: '白骨温泉は、長野県松本市安曇にある温泉である。中部山岳国立公園区域内にあり、国民保養温泉地にも指定されている。',
    image:open("./public/siraboneonsen.jpg"),
    prefecture: '長野県', city:'松本市', street:'安曇',
    area_id: 4, pick_up: 1},
    {name: '地獄谷野猿公苑', article: '地獄谷野猿公苑は、長野県下高井郡山ノ内町の地獄谷温泉にある野性のニホンザルの生態の観察が出来る野猿公園。冬場に温泉にサルが浸かる国際的な観光地。英語圏では“Snow Monkey Mountain”とも呼ばれる。',
    image:open("./public/地獄谷野猿公苑.jpg"),
    prefecture: '長野県', city:'下高井郡山ノ内町', street:'大字平穏6845',
    area_id: 4, pick_up: 1},

    {name: '大阪城', article: '大阪城は、安土桃山時代に摂津国東成郡生玉荘大坂に築かれ、江戸時代に修築された日本の城。別称は錦城。「大阪城跡」として国の特別史跡に指定されている。天守は博物館「大阪城天守閣」となっている。',
    image:open("./public/大阪城.jpg"),
    prefecture: '大阪府', city: '大阪市', street: '中央区大阪城1-1',
    area_id: 5, pick_up: 1},
    {name: '梅田スカイビル', article: '梅田スカイビルは、1993年3月に完成した、大阪府大阪市北区大淀中の新梅田シティ内にある超高層ビルである。',
    image:open("./public/umedasukaibilu.jpg"),
    prefecture: '大阪府', city:'大阪市北区大淀中', street:'1丁目1-88',
    area_id: 5},
    {name: '天保山大観覧車', article: '天保山大観覧車は大阪市港区の天保山ハーバービレッジにある観覧車である。1997年7月12日開業、高さ112.5m、直径は100mで、一時は世界最大の観覧車であった。株式会社海遊館が運営を行っている。',
    image:open("./public/天保山大観覧車.jpg"),
    prefecture: '大阪府', city:'大阪市', street:'港区海岸通1丁目1-10',
    area_id: 5},
    {name: '戎橋', article: '戎橋は、大阪市中央区の道頓堀川に架かる心斎橋筋・戎橋筋の橋。',
    image:open("./public/戎橋.jpg"),
    prefecture: '大阪府', city:'中央区', street:'道頓堀1丁目6',
    area_id: 5},

    {name: '厳島神社', article: '厳島神社は、広島県廿日市市の厳島にある神社。式内社、安芸国一宮。旧社格は官幣中社で、現在は神社本庁の別表神社。神紋は「三つ盛り二重亀甲に剣花菱」。 古くは「伊都岐島神社」とも記された。全国に約500社ある厳島神社の総本社である。 平成8年12月にユネスコの世界文化遺産に「厳島神社」として登録されている。',
    image:open("./public/厳島神社.jpg"),
    prefecture: '広島県', city: '廿日市', street: '市宮島町1-1',
    area_id: 6},
    {name: '原爆ドーム', article: '原爆ドームの名で知られる広島平和記念碑は、1945年8月6日8時15分日本の広島市に投下された原子爆弾の悲惨さを今に伝える記念碑である。もともとは広島県のさまざまな物産を展示するための広島県物産陳列館として開館され、原爆投下当時は広島県産業奨励館と呼ばれていた。',
    image:open("./public/genbakudomu.jpg"),
    prefecture: '広島県', city:'広島市', street:'中区大手町1-10',
    area_id: 6},
    {name: 'おりづるタワー', article: '静かな屋上展望台から、感動的な広島の景観を望むことができる。1 階にカフェを併設。',
    image:open("./public/orizurutawa.jpg"),
    prefecture: '広島県', city:'広島市', street:'中区大手町1丁目2-1',
    area_id: 6},
    {name: '縮景園', article: '縮景園は、広島県広島市中区上幟町にある庭園。',
    image:open("./public/縮景園.jpg"),
    prefecture: '広島県', city:'広島市中区', street:'上幟町２−１１',
    area_id: 6},

    {name: 'ベネッセハウス ミュージアム', article: 'ベネッセハウスは香川県香川郡直島町に在るホテルを備えた現代美術に特化した美術館。海外で最も知名度の高い日本のリゾート施設の一つ、ベネッセアートサイト直島の中核施設である。瀬戸内海の小島「直島」の南部、通称・琴弾地と呼ばれる地区に位置する。',
    image:open("./public/benesse.jpg"),
    prefecture: '香川県', city:'香川郡直島町', street:'琴弾地',
    area_id: 7},
    {name: 'エンジェルロード', article: 'エンジェルロードとは、香川県小豆郡土庄町銀波浦地区にある砂洲である。景勝地になっている。',
    image:open("./public/enjyerurodo.jpg"),
    prefecture: '香川県', city:'小豆郡土庄町', street:'銀波浦',
    area_id: 7},
    {name: '直島銭湯「I♥︎湯」', article: '直島銭湯「I♥湯」は、香川県香川郡直島町にある、大竹伸朗の美術作品かつ銭湯。',
    image:open("./public/sentou.jpg"),
    prefecture: '香川県', city:'香川郡直島町', street:'2252-2',
    area_id: 7},

    {name: '沖縄美ら海水族館', article: '沖縄美ら海水族館は、沖縄本島北西部の本部半島備瀬崎近くにある国営沖縄記念公園・海洋博覧会地区の 水族館。一般財団法人沖縄美ら島財団が管理・運営している。「チュらうみ」とは沖縄の方言で「清〔きよ〕ら海」という意味。',
    image:open("./public/suizokukan.jpg"),
    prefecture: '沖縄県', city: '国頭郡本部町', street: '字石川424',
    area_id: 8},
    {name: '美浜タウンリゾート・アメリカンビレッジ', article: '美浜タウンリゾート・アメリカンビレッジは、沖縄県北谷町美浜にあるリゾート地区。アメリカ合衆国の雰囲気を模したショッピング、エンターテイメントエリア。',
    image:open("./public/amerikan.jpg"),
    prefecture: '沖縄県', city:'中頭郡北谷町', street:'字美浜9-1',
    area_id: 8},
    {name: '斎場御嶽', article: '斎場御嶽は現在の沖縄県南城市にある史跡。15世紀-16世紀の琉球王国・尚真王時代の御嶽であるとされる。「せーふぁ」は「最高位」を意味し、「斎場御嶽」は「最高の御嶽」ほどの意味となり、これは通称である。正式な神名は「君ガ嶽、主ガ嶽ノイビ」という。',
    image:open("./public/utaki.jpg"),
    prefecture: '沖縄県', city:'南城市', street:'知念久手堅455',
    area_id: 8},
    {name: '勝連城跡', article: '勝連城は、沖縄県うるま市にあったグスクの城趾である。阿麻和利の城として有名。',
    image:open("./public/iseki.jpg"),
    prefecture: '沖縄県', city:'うるま市', street:'勝連南風原3908',
    area_id: 8},
    {name: '弘前城', article: '弘前城は、陸奥国鼻和郡弘前にあった日本の城である。別名・鷹岡城、高岡城。江戸時代に建造された天守や櫓などが現存し国の重要文化財に指定されている。また城跡は国の史跡に指定されている。江戸時代には津軽氏が居城し弘前藩の藩庁が置かれた。',
    image:open("./public/弘前城.jpg"),
    prefecture: '青森県', city: '弘前市', street: '大字下白銀町1',
    area_id: 2},
    {name: '奥入瀬渓流', article: '奥入瀬渓流は、青森県十和田市の十和田湖東岸の子ノ口から北東に、焼山までの約14kmにわたる奥入瀬川の渓流である。十和田八幡平国立公園に属する。国指定の特別名勝及び天然記念物。',
    image:open("./public/奥入瀬渓流.jpg"),
    prefecture: '青森県', city:'十和田市', street:'大字奥瀬60',
    area_id: 2},
    {name: '弘前城公園', article: '弘前公園は、青森県弘前市にある公園。別名は、鷹揚公園、鷹揚園。弘前市都市公園条例での名称は「鷹揚園」。 春には約50種、2,600本の桜が咲く名所としても知られる。',
    image:open("./public/弘前城公園.jpg"),
    prefecture: '青森県', city:'弘前市', street:'大字下白銀町1',
    area_id: 2},

    {name: '栗林公園', article: '栗林公園は、香川県高松市に所在し、国の特別名勝に指定された回遊式大名庭園である。県立の都市公園として運営されている。',
    image:open("./public/栗林公園.jpg"),
    prefecture: '香川県', city: '高松市', street: '栗林町1丁目20-16',
    area_id: 7},

    {name: '龍泉洞', article: '龍泉洞は、日本の岩手県下閉伊郡岩泉町にある鍾乳洞。岩泉湧窟とも言う。総延長約1,200m。高低差約249mは日本の洞窟中第5位。 秋芳洞・龍河洞と共に「日本三大鍾乳洞」の一つに数えられる。 また、地底湖は龍泉洞地底湖の水として1985年名水百選のひとつに選定された。',
    image:open("./public/龍泉洞.jpg"),
    prefecture: '岩手県', city:'下閉伊郡岩泉町', street:'岩泉神成1番地1',
    area_id: 2},
  ]
)

EventTag.create!(
  [
    {tag_id:1, event_id:1},
    {tag_id:2, event_id:2},
    {tag_id:3, event_id:3},
    {tag_id:4, event_id:4},
    {tag_id:1, event_id:5},
    {tag_id:1, event_id:6},
    {tag_id:1, event_id:7},
    {tag_id:1, event_id:8},
    {tag_id:1, event_id:9},
    {tag_id:1, event_id:10},
    {tag_id:2, event_id:11},
    {tag_id:2, event_id:12},
    {tag_id:2, event_id:13},
    {tag_id:2, event_id:14},
    {tag_id:2, event_id:15},
    {tag_id:2, event_id:16},
    {tag_id:2, event_id:17},
    {tag_id:2, event_id:18},
    {tag_id:2, event_id:19},
    {tag_id:2, event_id:20},
    {tag_id:3, event_id:21},
    {tag_id:3, event_id:22},
    {tag_id:3, event_id:23},
    {tag_id:3, event_id:24},
    {tag_id:3, event_id:25},
    {tag_id:3, event_id:26},
    {tag_id:3, event_id:27},
    {tag_id:3, event_id:28},
    {tag_id:3, event_id:29},
    {tag_id:4, event_id:30},
    {tag_id:4, event_id:31},
    {tag_id:4, event_id:32},
    {tag_id:4, event_id:33},
    {tag_id:4, event_id:34},
    {tag_id:4, event_id:35},
    {tag_id:4, event_id:36},
    {tag_id:4, event_id:37},
    {tag_id:4, event_id:38},
    {tag_id:4, event_id:39},
    {tag_id:4, event_id:40},
    {tag_id:1, event_id:41},
    {tag_id:1, event_id:42},
    {tag_id:3, event_id:43},
    {tag_id:2, event_id:44},
    {tag_id:4, event_id:45},
    {tag_id:2, event_id:46}
  ]
)
