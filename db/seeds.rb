# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 管理者
Admin.create!(
  email: "admin@test.com",
  password: "password"
)

# 会員
# 男性
User.create!(
  name: "佐藤寿也",
  name_kana: "さとうとしや",
  nickname: "としや",
  gender: 1,
  # image_id: File.open("./app/assets/images/man3.jpg"),
  birthday: "1993-1-11",
  postal_code: "3310801",
  prefecture_code: 11,
  municipality: "さいたま市北区",
  nearest_station: "今羽",
  email: "test1@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "久保幸士郎",
  name_kana: "くぼこうしろう",
  nickname: "こうちゃん",
  gender: 1,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1999-3-21",
  postal_code: "358-0007",
  prefecture_code: 11,
  municipality: "入間市",
  nearest_station: "入間",
  email: "test2@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "服部望",
  name_kana: "はっとりのぞむ",
  nickname: "のぞん",
  gender: 1,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1975-5-4",
  postal_code: "340-0043",
  prefecture_code: 11,
  municipality: "草加市",
  nearest_station: "草加",
  email: "test3@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "東将喜",
  name_kana: "ひがしまさき",
  nickname: "まっさー",
  gender: 1,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1980-4-7",
  postal_code: "273-0041",
  prefecture_code: 12,
  municipality: "船橋市",
  nearest_station: "船橋",
  email: "test4@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "村山優斗",
  name_kana: "むらやまゆうと",
  nickname: "ゆうと",
  gender: 1,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1977-9-17",
  postal_code: "292-0055",
  prefecture_code: 12,
  municipality: "木更津市",
  nearest_station: "旭",
  email: "test5@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "松田正彦",
  name_kana: "まつだまさひこ",
  nickname: "まっつん",
  gender: 1,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1983-10-14",
  postal_code: "270-2223",
  prefecture_code: 12,
  municipality: "松戸市",
  nearest_station: "松戸",
  email: "test6@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "田中太郎",
  name_kana: "タナカタロウ",
  nickname: "たろうちゃん",
  gender: 1,
  # image_id: File.open("./app/assets/images/man1.jpg"),
  birthday: "1990-12-3",
  postal_code: "1690075",
  prefecture_code: 13,
  municipality: "新宿区",
  nearest_station: "新宿",
  email: "test7@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "ジェームズブラウン",
  name_kana: "ジェームズブラウン",
  nickname: "ジェームズ",
  gender: 1,
  # image_id: File.open("./app/assets/images/man2.jpg"),
  birthday: "1986-5-21",
  postal_code: "1500042",
  prefecture_code: 13,
  municipality: "渋谷区",
  nearest_station: "渋谷",
  email: "test8@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "パワプロ君",
  name_kana: "パワプロクン",
  nickname: "パワプロ",
  gender: 1,
  # image_id: File.open("./app/assets/images/woman2.jpg"),
  birthday: "2000-9-5",
  postal_code: "1580094",
  prefecture_code: 13,
  municipality: "世田谷区",
  nearest_station: "二子玉川",
  email: "test9@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "大谷翔平",
  name_kana: "オオタニショウヘイ",
  nickname: "ShoheiOtani!",
  gender: 1,
  # image_id: File.open("./app/assets/images/woman1.jpg"),
  birthday: "1970-12-12",
  postal_code: "2470052",
  prefecture_code: 14,
  municipality: "鎌倉市",
  nearest_station: "鎌倉",
  email: "test10@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "西尾十兵衛",
  name_kana: "ニシオジュウベエ",
  nickname: "てんべえ",
  gender: 1,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1989-10-24",
  postal_code: "229-0024",
  prefecture_code: 14,
  municipality: "相模原市",
  nearest_station: "青葉",
  email: "test11@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "永井陽介",
  name_kana: "ナガイヨウスケ",
  nickname: "よーちゃん",
  gender: 1,
  # image_id: File.open("./app/assets/images/"),
  birthday: "2001-7-19",
  postal_code: "210-0847",
  prefecture_code: 14,
  municipality: "川崎市川崎区",
  nearest_station: "川崎",
  email: "test12@test.com",
  password: "aaaaaa",
)


# 女性
User.create!(
  name: "竈門禰豆子",
  name_kana: "カマドネズコ",
  nickname: "ねずこ",
  gender: 2,
  # image_id: File.open("./app/assets/images/woman3.jpg"),
  birthday: "1991-11-11",
  postal_code: "3500852",
  prefecture_code: 11,
  municipality: "川越市",
  nearest_station: "本川越",
  email: "test13@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "八木綾香",
  name_kana: "ヤギアヤカ",
  nickname: "あや",
  gender: 2,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1992-2-10",
  postal_code: "359-0000",
  prefecture_code: 11,
  municipality: "所沢市",
  nearest_station: "所沢",
  email: "test14@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "大山礼子",
  name_kana: "アオヤマノリコ",
  nickname: "のりぴー",
  gender: 2,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1978-4-1",
  postal_code: "333-0826",
  prefecture_code: 11,
  municipality: "川口市",
  nearest_station: "西川口",
  email: "test15@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "森田和代",
  name_kana: "モリタカズヨ",
  nickname: "かずちゃん",
  gender: 2,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1992-4-17",
  postal_code: "272-0143",
  prefecture_code: 12,
  municipality: "市川市",
  nearest_station: "市川",
  email: "test16@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "青山成美",
  name_kana: "アオヤマナルミ",
  nickname: "なるみん",
  gender: 2,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1993-1-19",
  postal_code: "277-0055",
  prefecture_code: 12,
  municipality: "柏市",
  nearest_station: "柏",
  email: "test17@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "今井まり子",
  name_kana: "イマイマリコ",
  nickname: "まりこ",
  gender: 2,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1994-10-11",
  postal_code: "263-0034",
  prefecture_code: 12,
  municipality: "千葉市稲毛区",
  nearest_station: "稲毛",
  email: "test18@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "中井優来",
  name_kana: "ナカイユラ",
  nickname: "ゆら",
  gender: 2,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1989-8-8",
  postal_code: "192-0082",
  prefecture_code: 13,
  municipality: "八王子市",
  nearest_station: "西八王子",
  email: "test19@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "佐藤亜希子",
  name_kana: "サトウアキコ",
  nickname: "あき",
  gender: 2,
  # image_id: File.open("./app/assets/images/woman3.jpg"),
  birthday: "1968-10-19",
  postal_code: "2050011",
  prefecture_code: 13,
  municipality: "羽村市",
  nearest_station: "羽村",
  email: "test20@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "阿座見野くるみ",
  name_kana: "アザミノクルミ",
  nickname: "くるみん",
  gender: 2,
  # image_id: File.open("./app/assets/images/"),
  birthday: "2000-1-1",
  postal_code: "105-0014",
  prefecture_code: 13,
  municipality: "港区",
  nearest_station: "品川駅",
  email: "test21@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "丸山遥香",
  name_kana: "マルヤマハルカ",
  nickname: "はるか",
  gender: 2,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1988-5-20",
  postal_code: "243-0437",
  prefecture_code: 14,
  municipality: "海老名市",
  nearest_station: "座間",
  email: "test22@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "島田悦子",
  name_kana: "シマダエツコ",
  nickname: "えっちゃん",
  gender: 2,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1979-6-2",
  postal_code: "245-0061",
  prefecture_code: 14,
  municipality: "横浜市戸塚区",
  nearest_station: "戸塚",
  email: "test23@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "東純子",
  name_kana: "ヒガシジュンコ",
  nickname: "じゅんこ",
  gender: 2,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1969-11-17",
  postal_code: "243-0028",
  prefecture_code: 14,
  municipality: "厚木市",
  nearest_station: "本厚木",
  email: "test24@test.com",
  password: "aaaaaa",
)

# ひみつ

User.create!(
  name: "二ノ美屋銀",
  name_kana: "ニノミヤギン",
  nickname: "ぎん",
  gender: 0,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1990-12-12",
  postal_code: "190-0012",
  prefecture_code: 13,
  municipality: "立川市",
  nearest_station: "立川",
  email: "test25@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "和ノ内萌",
  name_kana: "ワノウチモエ",
  nickname: "もえ",
  gender: 0,
  # image_id: File.open("./app/assets/images/"),
  birthday: "1998-1-6",
  postal_code: "249-0002",
  prefecture_code: 14,
  municipality: "逗子市",
  nearest_station: "逗子",
  email: "test26@test.com",
  password: "aaaaaa",
)



# 投稿
# 男性の投稿
Post.create!(
  user_id: 1,
  genre_id: 3,
  title: "(野球)キャッチボール仲間を探してます",
  content: "キャッチボール仲間探してます。

            近くのグラウンドでキャッチボールしましょう！
            中学校ぐらいまで野球経験がある方だと嬉しいです。

            日程や時間は相談しましょう。
            チャットまってます！",
  gender: 1,
  prefecture_code: 11,
  municipality: "さいたま市北区",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 1,
  genre_id: 1,
  title: "(筋トレ)一緒にジムで汗を流しませんか？",
  content: "ジム友募集中です。

            最近ジムに通い始めたのですが、自分の意思が弱く一人ではなかなか継続して通うことができません。

            そこで毎日決まった曜日、決まった時間に一緒にジムに行ってくれる方を探しています。

            希望エリア内であればジムを指定していただいても構いません。
            チャット待ってます。よろしくお願いします！",
  gender: 3,
  prefecture_code: 11,
  municipality: "さいたま市北区",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 2,
  genre_id: 6,
  title: "一緒にお酒飲める友達募集してます！",
  content: "初投稿です！

            単身赴任で埼玉県に引っ越してきましたが、
            関東近辺に友達がおらず、困っています。

            希望のエリアは多少ずれても構いません。
            月1〜2回一緒に居酒屋でお酒を一緒に飲めるお友達が欲しいです。

            高級なバーとかではなく、庶民的な居酒屋希望です。
            仕事の話や趣味の話などもできたら嬉しいです。",
  gender: 1,
  prefecture_code: 11,
  municipality: "入間市",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 2,
  genre_id: 2,
  title: "読書友達募集中！",
  content: "こんにちは！
            読んだ本のアウトプットし合えるお友達が欲しいです！

            読書はアウトプットしてこそ知識になると思うのですが、
            私は一人暮らしでアウトプットする人が身近にいません(>_<)

            私と本のアウトプットをし合ってくれる方はいませんか？

            方法は相談したいと思うのですが、Zoomで週に1回程度読んだ本の紹介をし合えたら嬉しいです。

            チャット待ってます！",
  gender: 3,
  prefecture_code: 11,
  municipality: "入間市",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 3,
  genre_id: 6,
  title: "5月10日　草加駅近辺でお酒飲みませんか？",
  content: "こんにちは！

            5月10日に草加駅で飲みに行ける人探しています！

            19時以降でお時間いただける方、チャット待ってます！
            ※男性限定でお願いします",
  gender: 1,
  prefecture_code: 11,
  municipality: "草加市",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 3,
  genre_id: 2,
  title: "一緒に勉強してくれる人募集中！",
  content: "こんにちは！初投稿です！

            私は現在、エンジニアへの転職を目指して勉強中なのですが、
            一人だと忍耐不足で長時間勉強を続けることができなくて困っています。

            私と一緒に毎日時間を決めて勉強しませんか？
            Zoomで毎日決まった時間に集合して勉強するルールを作りたいです！

            よろしくお願いします！",
  gender: 3,
  prefecture_code: 11,
  municipality: "草加市",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 4,
  genre_id: 3,
  title: "フットサルメンバー募集中",
  content: "閲覧ありがとうございます。

            私はフットサルチーム「ZONe」のキャプテンをしているまっさーという者です。
            毎週土曜日に船橋市近辺でグラウンドを借りて、試合や練習をしています。

            メンバーは初心者も多く、お世辞にも強いチームとはいえません。
            それゆえに一緒に「楽しく」フットサルできる方を探しています。

            ご興味のある方はチャットで話しましょう！",
  gender: 3,
  prefecture_code: 12,
  municipality: "船橋市",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 5,
  genre_id: 4,
  title: "UverworldのLIVEにいきませんか？",
  content: "閲覧ありがとうございます。

            6月10日、Zeep東京で行われるUverworldのライブに一緒に行ける方探しています！

            2席連番で私と同行していだきます。
            お値段は定価の7,800円です。

            ご興味のある方はチャット待ってます！

            一緒にライブ楽しみましょう！！！！！",
  gender: 3,
  prefecture_code: 13,
  municipality: "江東区",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 5,
  genre_id: 5,
  title: "肉フェスいきませんか？木更津公園",
  content: "こんにちは！

            コロナで延期の可能性もありますが、
            6月20日に開催される「肉フェス」に一緒に行きませんか？

            お酒を飲む予定なので電車で行こうと考えています。

            私のように一緒に行く人いないけど肉食べたい方がいましたらチャットお待ちしております。笑",
  gender: 3,
  prefecture_code: 12,
  municipality: "木更津市",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 5,
  genre_id: 6,
  title: "純粋に友達欲しい",
  content: "実家を出て一人暮らしを始めたのですが、近くに友達がいません。

            休日はボーリングやカラオケがしたいです！

            一緒に行ってくれる方いませんかあああああ！？！？",
  gender: 3,
  prefecture_code: 12,
  municipality: "木更津市",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 6,
  genre_id: 1,
  title: "HIITトレーニングで脂肪を燃やそう！(筋トレ)",
  content: "こんにちは。
            私は木更津市の○○ジムに通っています。

            ○○ジムで一緒に汗を流しませんか？

            今流行のHIITトレーニングで10kg減が目標です。

            曜日や時間は相談しましょう！",
  gender: 1,
  prefecture_code: 12,
  municipality: "松戸市",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 6,
  genre_id: 2,
  title: "資格取得目指して勉強しませんか？",
  content: "こんにちは。
            私は現在、公認会計士の資格取得を目指して勉強中です。

            資格目指して一緒に切磋琢磨できる方を探しています！

            カフェなどで一緒に勉強してもよし、オンライン上でのやりとりでも構いません。

            勉強したくない気分の日などにお互いで背中を押し合いましょう。
            よろしくお願いします！
            ",
  gender: 3,
  prefecture_code: 12,
  municipality: "松戸市",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 7,
  genre_id: 6,
  title: "(渋谷)飲み友、呑み友募集中です！",
  content: "こんにちは。
            新宿で一緒に飲みに行ける方を探しています！

            性別、年齢不問

            まずはチャットで仲良くなりたいです！",
  gender: 3,
  prefecture_code: 13,
  municipality: "新宿区",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 7,
  genre_id: 6,
  title: "(渋谷)飲み友、呑み友募集中です！",
  content: "こんにちは。
            渋谷で一緒に飲みに行ける方を探しています！

            性別、年齢不問

            まずはチャットで仲良くなりたいです！",
  gender: 3,
  prefecture_code: 13,
  municipality: "渋谷区",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 8,
  genre_id: 3,
  title: "一緒に3on3　バスケットボールしませんか？",
  content: "こんにちは
            ジェームズブラウンです。

            渋谷駅近くのコートで3on3しませんか？

            僕は暇さえあればバスケしてます。笑

            少し身体動かしたいと思ってる人、バスケ経験者大歓迎です！",
  gender: 3,
  prefecture_code: 13,
  municipality: "渋谷区",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 9,
  genre_id: 2,
  title: "一緒に成長できる仲間が欲しい(エンジニア限定)",
  content: "こんにちは。
            僕は今、エンジニア転職を目指して独学勉強中です。

            同じエンジニア志望の方や現役エンジニアで勉強仲間を探している方がいれば一番嬉しいです。

            勉強内容をお互いアウトプットして知識を定着させたり、
            Qiitaの発信に最低回数や期限などルールを設けて発信活動も積極的に行っていきたいと考えています。

            私自身まだまだ勉強足らずの初学者ゆえ、スキルは問いません。
            一緒に「高め合う」ことができる人が見つかったら嬉しいです。

            チャット待ってます。
            ",
  gender: 1,
  prefecture_code: 13,
  municipality: "世田谷区",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 9,
  genre_id: 7,
  title: "猫の里親探しています",
  content: "こんにちは。
            現在、生まれたて子猫３匹の里親を探しています。

            ご希望の方は、ご指定の場所まで車でお伺いします。

            種や誕生日、性別などはチャットでご質問ください！
            ※世田谷区から車で1時間前後のエリアならOKです！",
  gender: 3,
  prefecture_code: 13,
  municipality: "世田谷区",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 10,
  genre_id: 3,
  title: "(野球)キャッチャー募集中",
  content: "こんにちは。
            男性で野球経験者の方探しています。

            鎌倉近辺で投げ込み付き合って欲しいです。

            お礼にお昼ご飯は御馳走します。

            あ、ピッチャーの方でお互いに投げ合うでも良いですね。
            チャット待ってます。",
  gender: 1,
  prefecture_code: 14,
  municipality: "鎌倉市",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 10,
  genre_id: 2,
  title: "英会話のアウトプット友達(語学)(勉強)",
  content: "こんにちは。
            英会話で習った英語をアウトプットし会える仲間を探しいます。

            オンラインで英語で会話することにより、知識を定着させたいです。

            頻度や日程は都度調整したいと考えています。",
  gender: 3,
  prefecture_code: 14,
  municipality: "鎌倉市",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 11,
  genre_id: 2,
  title: "デモデータ内容考え中(勉強)",
  content: "こんにちは。
            デモデータ内容考え中です。
            デモデータ内容考え中です。
            デモデータ内容考え中です。

            デモデータ内容考え中です。
            デモデータ内容考え中です。",
  gender: 3,
  prefecture_code: 14,
  municipality: "相模原市",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 11,
  genre_id: 3,
  title: "デモデータ内容考え中(スポーツ)",
  content: "こんにちは。
            デモデータ内容考え中です。
            デモデータ内容考え中です。
            デモデータ内容考え中です。

            デモデータ内容考え中です。
            デモデータ内容考え中です。",
  gender: 3,
  prefecture_code: 14,
  municipality: "相模原市",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 11,
  genre_id: 6,
  title: "デモデータ内容考え中(友達募集)",
  content: "こんにちは。
            デモデータ内容考え中です。
            デモデータ内容考え中です。
            デモデータ内容考え中です。

            デモデータ内容考え中です。
            デモデータ内容考え中です。",
  gender: 2,
  municipality: "相模原市",
  prefecture_code: 14,
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 12,
  genre_id: 1,
  title: "デモデータ内容考え中(筋トレ・ダイエット)",
  content: "こんにちは。
            デモデータ内容考え中です。
            デモデータ内容考え中です。
            デモデータ内容考え中です。

            デモデータ内容考え中です。
            デモデータ内容考え中です。",
  gender: 1,
  prefecture_code: 14,
  municipality: "川崎市川崎区",
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 12,
  genre_id: 2,
  title: "デモデータ内容考え中(勉強)",
  content: "こんにちは。
            デモデータ内容考え中です。
            デモデータ内容考え中です。
            デモデータ内容考え中です。

            デモデータ内容考え中です。
            デモデータ内容考え中です。",
  gender: 1,
  prefecture_code: 14,
  municipality: "川崎市川崎区",
  # image_id: File.open("./app/assets/images/")
)

# 女性の投稿
Post.create!(
  user_id: 13,
  genre_id: 1,
  title: "(本川越駅周辺)ダイエット　ランニング仲間募集中！",
  content: "こんにちは！

            本川越駅周辺で一緒にランニングしてくれる方募集中です！

            初心者なので全然早くは走れません。。。

            時間帯は6:00~8:00の間で、時間は1時間程度で考えています。
            曜日は相談しながらやっていきたいです！

            ご興味がある方は、チャットお待ちしてます！",
  gender: 2,
  prefecture_code: 11,
  municipality: "川越市",
  # image_id: File.open("./app/assets/images/")
)

# ジャンル
Genre.create!(
  name: "筋トレ・ダイエット"
)

Genre.create!(
  name: "勉強(スキルアップ)"
)

Genre.create!(
  name: "スポーツ"
)

Genre.create!(
  name: "ライブ観戦"
)

Genre.create!(
  name: "イベント"
)

Genre.create!(
  name: "友達募集"
)

Genre.create!(
  name: "その他"
)