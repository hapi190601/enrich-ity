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
User.create!(
  name: "田中太郎",
  name_kana: "たなかたろう",
  nickname: "たろうちゃん",
  gender: 1,
  # image_id: File.open("./app/assets/images/man1.jpg"),
  birthday: "1990-12-3",
  postal_code: "1690075",
  prefecture_code: 13,
  municipality: "新宿区",
  nearest_station: "新宿",
  email: "test1@test.com",
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
  email: "test2@test.com",
  password: "aaaaaa",
)

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
  email: "test3@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "大谷翔平",
  name_kana: "おおたにしょうへい",
  nickname: "ShoheiOtani!",
  gender: 2,
  # image_id: File.open("./app/assets/images/woman1.jpg"),
  birthday: "1970-12-12",
  postal_code: "2470052",
  prefecture_code: 14,
  municipality: "鎌倉市",
  nearest_station: "鎌倉",
  email: "test4@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "パワプロ君",
  name_kana: "パワプロクン",
  nickname: "パワプロ",
  gender: 2,
  # image_id: File.open("./app/assets/images/woman2.jpg"),
  birthday: "2000-9-5",
  postal_code: "1580094",
  prefecture_code: 13,
  municipality: "世田谷区",
  nearest_station: "二子玉川",
  email: "test5@test.com",
  password: "aaaaaa",
)

User.create!(
  name: "竈門禰豆子",
  name_kana: "カマドネズコ",
  nickname: "ねずこ",
  gender: 0,
  # image_id: File.open("./app/assets/images/woman3.jpg"),
  birthday: "1991-11-11",
  postal_code: "3500852",
  prefecture_code: 11,
  municipality: "川越市",
  nearest_station: "本川越",
  email: "test6@test.com",
  password: "aaaaaa",
)

# 投稿
Post.create!(
  user_id: 4,
  genre_id: 4,
  title: "キャッチボール仲間を探してます！",
  content: "キャッチボール仲間探してます。

            近くのグラウンドでキャッチボールしましょう！
            中学校ぐらいまで野球経験がある方だと嬉しいです！

            日程や時間は要相談

            チャットまってます！
            big fly otanisan!!",
  age: 50,
  gender: 1,
  desired_area: "鎌倉駅"
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 2,
  genre_id: 1,
  title: "渋谷駅周辺で一緒にジムで筋トレしよう！",
  content: "初投稿です！
            一緒にジムで筋トレしてくれる人を探しています！

            どれくらい筋トレできるかは気にしません。
            渋谷駅近くの「ティップネス」でどうでしょうか！※要相談

            頻度や時間などはチャットで相談できればと思ってます！

            よろしくおねがいします！！！！！",
  age: 34,
  gender: 1,
  desired_area: "渋谷区"
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 1,
  genre_id: 3,
  title: "読書友達募集中！",
  content: "こんにちは！
            読んだ本のアウトプットし合えるお友達が欲しいです！

            読書はアウトプットしてこそ知識になると思うのですが、
            私は一人暮らしでアウトプットする人が身近にいません(>_<)

            私と本のアウトプットをし合ってくれる方はいませんか？

            方法は相談したいと思うのですが、Zoomで週に1回程度読んだ本の紹介をし合えたら嬉しいです。

            チャット待ってます！",
  age: 30,
  gender: 3,
  desired_area: "新宿区"
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 6,
  genre_id: 7,
  title: "4月15日　川越駅　お酒飲みませんか？",
  content: "こんにちは！

            4月15日に川越駅で飲みに行ける人探しています！

            19時以降でお時間いただける方、チャット待ってます！
            ※女性限定でお願いします。",
  age: 29,
  gender: 2,
  desired_area: "川越駅"
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 6,
  genre_id: 2,
  title: "(本川越駅周辺)ランニング仲間募集中！",
  content: "こんにちは！

            本川越駅周辺で一緒にランニングしてくれる方募集中です！

            初心者なので全然早くは走れません。。。

            時間帯は6:00~8:00の間で、時間は1時間程度で考えています。
            曜日は相談しながらやっていきたいです！

            ご興味がある方は、チャットお待ちしてます！",
  age: 29,
  gender: 3,
  desired_area: "川越市"
  # image_id: File.open("./app/assets/images/")
)

Post.create!(
  user_id: 6,
  genre_id: 3,
  title: "一緒に勉強してくれる人募集中！",
  content: "こんにちは！初投稿です！

            私は現在、エンジニアへの転職を目指して勉強中なのですが、
            一人だと忍耐不足で長時間勉強を続けることができなくて困っています。

            私と一緒に毎日時間を決めて勉強しませんか？
            Zoomで毎日決まった時間に集合して勉強するルールを作りたいです！

            よろしくお願いします！",
  age: 29,
  gender: 3,
  desired_area: "オンライン"
  # image_id: File.open("./app/assets/images/")
)

Genre.create!(
  name: "筋力トレーニング"
)

Genre.create!(
  name: "ダイエット"
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
  name: "その他"
)

