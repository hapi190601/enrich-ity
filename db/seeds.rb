# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 管理者
Admin.create!(
  :email => "gc1206ro@gmail.com",
  :password => "password"
)

# ジャンル
Genre.create!(
  :name => "筋トレ・ダイエット"
)

Genre.create!(
  :name => "勉強(スキルアップ)"
)

Genre.create!(
  :name => "スポーツ"
)

Genre.create!(
  :name => "ライブ観戦"
)

Genre.create!(
  :name => "イベント"
)

Genre.create!(
  :name => "友達募集"
)

Genre.create!(
  :name => "その他"
)

# 会員
# 男性

# もしファイルの保存先をconfigで変更した場合はこちらのフォルダ指定も変更する
backend = Refile::Backend::FileSystem.new(Rails.root.join("tmp/uploads/store"))

man1 = backend.upload(File.open(Rails.root.join("app/assets/images/people/man1.jpg")))
User.create!(
  :name => "佐藤寿也",
  :name_kana => "さとうとしや",
  :nickname => "としや",
  :gender => 1,
  :image_id => man1.id,
  :birthday => "1993-1-11",
  :postal_code => "3310801",
  :prefecture_code => 11,
  :municipality => "さいたま市北区",
  :nearest_station => "今羽",
  :email => "test1@test.com",
  :password => "aaaaaa",
)

man2 = backend.upload(File.open(Rails.root.join("app/assets/images/people/man2.jpg")))
User.create!(
  :name => "久保幸士郎",
  :name_kana => "くぼこうしろう",
  :nickname => "こうちゃん",
  :gender => 1,
  :image_id => man2.id,
  :birthday => "1999-3-21",
  :postal_code => "3580007",
  :prefecture_code => 11,
  :municipality => "入間市",
  :nearest_station => "入間",
  :email => "test2@test.com",
  :password => "aaaaaa",
)

man3 = backend.upload(File.open(Rails.root.join("app/assets/images/people/man3.jpg")))
User.create!(
  :name => "服部望",
  :name_kana => "はっとりのぞむ",
  :nickname => "のぞん",
  :gender => 1,
  :image_id => man3.id,
  :birthday => "1975-5-4",
  :postal_code => "3400043",
  :prefecture_code => 11,
  :municipality => "草加市",
  :nearest_station => "草加",
  :email => "test3@test.com",
  :password => "aaaaaa",
)

man4 = backend.upload(File.open(Rails.root.join("app/assets/images/people/man4.jpg")))
User.create!(
  :name => "東将喜",
  :name_kana => "ひがしまさき",
  :nickname => "まっさー",
  :gender => 1,
  :image_id => man4.id,
  :birthday => "1980-4-7",
  :postal_code => "2730041",
  :prefecture_code => 12,
  :municipality => "船橋市",
  :nearest_station => "船橋",
  :email => "test4@test.com",
  :password => "aaaaaa",
)

man5 = backend.upload(File.open(Rails.root.join("app/assets/images/people/man5.jpg")))
User.create!(
  :name => "村山優斗",
  :name_kana => "むらやまゆうと",
  :nickname => "ゆうと",
  :gender => 1,
  :image_id => man5.id,
  :birthday => "1977-9-17",
  :postal_code => "2920055",
  :prefecture_code => 12,
  :municipality => "木更津市",
  :nearest_station => "旭",
  :email => "test5@test.com",
  :password => "aaaaaa",
)

man6 = backend.upload(File.open(Rails.root.join("app/assets/images/people/man6.jpg")))
User.create!(
  :name => "松田正彦",
  :name_kana => "まつだまさひこ",
  :nickname => "まっつん",
  :gender => 1,
  :image_id => man6.id,
  :birthday => "1983-10-14",
  :postal_code => "2702223",
  :prefecture_code => 12,
  :municipality => "松戸市",
  :nearest_station => "松戸",
  :email => "test6@test.com",
  :password => "aaaaaa",
)

man7 = backend.upload(File.open(Rails.root.join("app/assets/images/people/man7.jpg")))
User.create!(
  :name => "田中太郎",
  :name_kana => "タナカタロウ",
  :nickname => "たろうちゃん",
  :gender => 1,
  :image_id => man7.id,
  :birthday => "1990-12-3",
  :postal_code => "1690075",
  :prefecture_code => 13,
  :municipality => "新宿区",
  :nearest_station => "新宿",
  :email => "test7@test.com",
  :password => "aaaaaa",
)

man8 = backend.upload(File.open(Rails.root.join("app/assets/images/people/man8.jpg")))
User.create!(
  :name => "ジェームズブラウン",
  :name_kana => "ジェームズブラウン",
  :nickname => "ジェームズ",
  :gender => 1,
  :image_id => man8.id,
  :birthday => "1986-5-21",
  :postal_code => "1500042",
  :prefecture_code => 13,
  :municipality => "渋谷区",
  :nearest_station => "渋谷",
  :email => "test8@test.com",
  :password => "aaaaaa",
)

man9 = backend.upload(File.open(Rails.root.join("app/assets/images/people/man9.jpg")))
User.create!(
  :name => "パワプロ君",
  :name_kana => "パワプロクン",
  :nickname => "パワプロ",
  :gender => 1,
  :image_id => man9.id,
  :birthday => "2000-9-5",
  :postal_code => "1580094",
  :prefecture_code => 13,
  :municipality => "世田谷区",
  :nearest_station => "二子玉川",
  :email => "test9@test.com",
  :password => "aaaaaa",
)

man10 = backend.upload(File.open(Rails.root.join("app/assets/images/people/man10.jpg")))
User.create!(
  :name => "大谷翔平",
  :name_kana => "オオタニショウヘイ",
  :nickname => "ShoheiOtani!",
  :gender => 1,
  :image_id => man10.id,
  :birthday => "1970-12-12",
  :postal_code => "2470052",
  :prefecture_code => 14,
  :municipality => "鎌倉市",
  :nearest_station => "鎌倉",
  :email => "test10@test.com",
  :password => "aaaaaa",
)

man11 = backend.upload(File.open(Rails.root.join("app/assets/images/people/man11.jpg")))
User.create!(
  :name => "西尾十兵衛",
  :name_kana => "ニシオジュウベエ",
  :nickname => "てんべえ",
  :gender => 1,
  :image_id => man11.id,
  :birthday => "1989-10-24",
  :postal_code => "2290024",
  :prefecture_code => 14,
  :municipality => "相模原市",
  :nearest_station => "青葉",
  :email => "test11@test.com",
  :password => "aaaaaa",
)

man12 = backend.upload(File.open(Rails.root.join("app/assets/images/people/man12.jpg")))
User.create!(
  :name => "永井陽介",
  :name_kana => "ナガイヨウスケ",
  :nickname => "よーちゃん",
  :gender => 1,
  :image_id => man12.id,
  :birthday => "2001-7-19",
  :postal_code => "2100847",
  :prefecture_code => 14,
  :municipality => "川崎市川崎区",
  :nearest_station => "川崎",
  :email => "test12@test.com",
  :password => "aaaaaa",
)


# 女性
woman1 = backend.upload(File.open(Rails.root.join("app/assets/images/people/woman1.jpg")))
User.create!(
  :name => "竈門禰豆子",
  :name_kana => "カマドネズコ",
  :nickname => "ねずこ",
  :gender => 2,
  :image_id => woman1.id,
  :birthday => "1991-11-11",
  :postal_code => "3500852",
  :prefecture_code => 11,
  :municipality => "川越市",
  :nearest_station => "本川越",
  :email => "test13@test.com",
  :password => "aaaaaa",
)

woman2 = backend.upload(File.open(Rails.root.join("app/assets/images/people/woman2.jpg")))
User.create!(
  :name => "八木綾香",
  :name_kana => "ヤギアヤカ",
  :nickname => "あや",
  :gender => 2,
  :image_id => woman2.id,
  :birthday => "1992-2-10",
  :postal_code => "3590000",
  :prefecture_code => 11,
  :municipality => "所沢市",
  :nearest_station => "所沢",
  :email => "test14@test.com",
  :password => "aaaaaa",
)

woman3 = backend.upload(File.open(Rails.root.join("app/assets/images/people/woman3.jpg")))
User.create!(
  :name => "大山礼子",
  :name_kana => "アオヤマノリコ",
  :nickname => "のりぴー",
  :gender => 2,
  :image_id => woman3.id,
  :birthday => "1978-4-1",
  :postal_code => "3330826",
  :prefecture_code => 11,
  :municipality => "川口市",
  :nearest_station => "西川口",
  :email => "test15@test.com",
  :password => "aaaaaa",
)

woman4 = backend.upload(File.open(Rails.root.join("app/assets/images/people/woman4.jpg")))
User.create!(
  :name => "森田和代",
  :name_kana => "モリタカズヨ",
  :nickname => "かずちゃん",
  :gender => 2,
  :image_id => woman4.id,
  :birthday => "1992-4-17",
  :postal_code => "2720143",
  :prefecture_code => 12,
  :municipality => "市川市",
  :nearest_station => "市川",
  :email => "test16@test.com",
  :password => "aaaaaa",
)

woman5 = backend.upload(File.open(Rails.root.join("app/assets/images/people/woman5.jpg")))
User.create!(
  :name => "青山成美",
  :name_kana => "アオヤマナルミ",
  :nickname => "なるみん",
  :gender => 2,
  :image_id => woman5.id,
  :birthday => "1993-1-19",
  :postal_code => "2770055",
  :prefecture_code => 12,
  :municipality => "柏市",
  :nearest_station => "柏",
  :email => "test17@test.com",
  :password => "aaaaaa",
)

woman6 = backend.upload(File.open(Rails.root.join("app/assets/images/people/woman6.jpg")))
User.create!(
  :name => "今井まり子",
  :name_kana => "イマイマリコ",
  :nickname => "まりこ",
  :gender => 2,
  :image_id => woman6.id,
  :birthday => "1994-10-11",
  :postal_code => "2630034",
  :prefecture_code => 12,
  :municipality => "千葉市稲毛区",
  :nearest_station => "稲毛",
  :email => "test18@test.com",
  :password => "aaaaaa",
)

woman7 = backend.upload(File.open(Rails.root.join("app/assets/images/people/woman7.jpg")))
User.create!(
  :name => "中井優来",
  :name_kana => "ナカイユラ",
  :nickname => "ゆら",
  :gender => 2,
  :image_id => woman7.id,
  :birthday => "1989-8-8",
  :postal_code => "1920082",
  :prefecture_code => 13,
  :municipality => "八王子市",
  :nearest_station => "西八王子",
  :email => "test19@test.com",
  :password => "aaaaaa",
)

woman8 = backend.upload(File.open(Rails.root.join("app/assets/images/people/woman8.jpg")))
User.create!(
  :name => "佐藤亜希子",
  :name_kana => "サトウアキコ",
  :nickname => "あき",
  :gender => 2,
  :image_id => woman8.id,
  :birthday => "1968-10-19",
  :postal_code => "2050011",
  :prefecture_code => 13,
  :municipality => "羽村市",
  :nearest_station => "羽村",
  :email => "test20@test.com",
  :password => "aaaaaa",
)

woman9 = backend.upload(File.open(Rails.root.join("app/assets/images/people/woman9.jpg")))
User.create!(
  :name => "阿座見野くるみ",
  :name_kana => "アザミノクルミ",
  :nickname => "くるみん",
  :gender => 2,
  :image_id => woman9.id,
  :birthday => "2000-1-1",
  :postal_code => "1050014",
  :prefecture_code => 13,
  :municipality => "港区",
  :nearest_station => "品川",
  :email => "test21@test.com",
  :password => "aaaaaa",
)

woman10 = backend.upload(File.open(Rails.root.join("app/assets/images/people/woman10.jpg")))
User.create!(
  :name => "丸山遥香",
  :name_kana => "マルヤマハルカ",
  :nickname => "はるか",
  :gender => 2,
  :image_id => woman10.id,
  :birthday => "1988-5-20",
  :postal_code => "2430437",
  :prefecture_code => 14,
  :municipality => "海老名市",
  :nearest_station => "座間",
  :email => "test22@test.com",
  :password => "aaaaaa",
)

woman11 = backend.upload(File.open(Rails.root.join("app/assets/images/people/woman11.jpg")))
User.create!(
  :name => "島田悦子",
  :name_kana => "シマダエツコ",
  :nickname => "えっちゃん",
  :gender => 2,
  :image_id => woman11.id,
  :birthday => "1979-6-2",
  :postal_code => "2450061",
  :prefecture_code => 14,
  :municipality => "横浜市戸塚区",
  :nearest_station => "戸塚",
  :email => "test23@test.com",
  :password => "aaaaaa",
)

woman12 = backend.upload(File.open(Rails.root.join("app/assets/images/people/woman12.jpg")))
User.create!(
  :name => "東純子",
  :name_kana => "ヒガシジュンコ",
  :nickname => "じゅんこ",
  :gender => 2,
  :image_id => woman12.id,
  :birthday => "1969-11-17",
  :postal_code => "2430028",
  :prefecture_code => 14,
  :municipality => "厚木市",
  :nearest_station => "本厚木",
  :email => "test24@test.com",
  :password => "aaaaaa",
)

# ひみつユーザー
himitsu1 = backend.upload(File.open(Rails.root.join("app/assets/images/people/himitsu1.jpg")))
User.create!(
  :name => "二ノ美屋銀",
  :name_kana => "ニノミヤギン",
  :nickname => "ぎん",
  :gender => 0,
  :image_id => himitsu1.id,
  :birthday => "1990-12-12",
  :postal_code => "1900012",
  :prefecture_code => 13,
  :municipality => "立川市",
  :nearest_station => "立川",
  :email => "test25@test.com",
  :password => "aaaaaa",
)

himitsu2 = backend.upload(File.open(Rails.root.join("app/assets/images/people/himitsu2.jpg")))
User.create!(
  :name => "和ノ内萌",
  :name_kana => "ワノウチモエ",
  :nickname => "もえ",
  :gender => 0,
  :image_id => himitsu2.id,
  :birthday => "1998-1-6",
  :postal_code => "2490002",
  :prefecture_code => 14,
  :municipality => "逗子市",
  :nearest_station => "逗子",
  :email => "test26@test.com",
  :password => "aaaaaa",
)


# 投稿
# 男性の投稿
post1 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post1.jpg")))
Post.create!(
  :user_id => 1,
  :genre_id => 3,
  :title => "(野球)キャッチボール仲間を探してます",
  :content =>   "キャッチボール仲間探してます。

  近くのグラウンドでキャッチボールしましょう！
  中学校ぐらいまで野球経験がある方だと嬉しいです。

  日程や時間は相談しましょう。
  チャットまってます！",
  :gender => 1,
  :prefecture_code => 11,
  :municipality => "さいたま市北区",
  :image_id => post1.id,
  :age =>   28
)

post2 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post2.jpg")))
Post.create!(
  :user_id => 1,
  :genre_id => 1,
  :title => "(筋トレ)一緒にジムで汗を流しませんか？",
  :content =>   "ジム友募集中です。

  最近ジムに通い始めたのですが、自分の意思が弱く一人ではなかなか継続して通うことができません。

  そこで毎日決まった曜日、決まった時間に一緒にジムに行ってくれる方を探しています。

  希望エリア内であればジムを指定していただいても構いません。
  チャット待ってます。よろしくお願いします！",
  :gender => 3,
  :prefecture_code => 11,
  :municipality => "さいたま市北区",
  :image_id => post2.id,
  :age =>   28
)

post3 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post3.jpg")))
Post.create!(
  :user_id => 2,
  :genre_id => 6,
  :title => "一緒にお酒飲める友達募集してます！",
  :content =>   "初投稿です！

  単身赴任で埼玉県に引っ越してきましたが、
  関東近辺に友達がおらず、困っています。

  希望のエリアは多少ずれても構いません。
  月1〜2回一緒に居酒屋でお酒を一緒に飲めるお友達が欲しいです。

  高級なバーとかではなく、庶民的な居酒屋希望です。
  仕事の話や趣味の話などもできたら嬉しいです。",
  :gender => 1,
  :prefecture_code => 11,
  :municipality => "入間市",
  :image_id => post3.id,
  :age =>   22
)

post4 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post4.jpg")))
Post.create!(
  :user_id => 2,
  :genre_id => 2,
  :title => "読書友達募集中！",
  :content =>   "こんにちは！
  読んだ本のアウトプットし合えるお友達が欲しいです！

  読書はアウトプットしてこそ知識になると思うのですが、
  私は一人暮らしでアウトプットする人が身近にいません(>_<)

  私と本のアウトプットをし合ってくれる方はいませんか？

  方法は相談したいと思うのですが、Zoomで週に1回程度読んだ本の紹介をし合えたら嬉しいです。

  チャット待ってます！",
  :gender => 3,
  :prefecture_code => 11,
  :municipality => "入間市",
  :image_id => post4.id,
  :age =>   22
)

post5 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post5.jpg")))
Post.create!(
  :user_id => 3,
  :genre_id => 6,
  :title => "5月10日　草加駅近辺でお酒飲みませんか？",
  :content =>   "こんにちは！

  5月10日に草加駅で飲みに行ける人探しています！

  19時以降でお時間いただける方、チャット待ってます！
  ※男性限定でお願いします",
  :gender => 1,
  :prefecture_code => 11,
  :municipality => "草加市",
  :image_id => post5.id,
  :age =>   45
)

post6 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post6.jpg")))
Post.create!(
  :user_id => 3,
  :genre_id => 2,
  :title => "一緒に勉強してくれる人募集中！",
  :content =>   "こんにちは！初投稿です！

  私は現在、エンジニアへの転職を目指して勉強中なのですが、
  一人だと忍耐不足で長時間勉強を続けることができなくて困っています。

  私と一緒に毎日時間を決めて勉強しませんか？
  Zoomで毎日決まった時間に集合して勉強するルールを作りたいです！

  よろしくお願いします！",
  :gender => 3,
  :prefecture_code => 11,
  :municipality => "草加市",
  :image_id => post6.id,
  :age =>   45
)
post7 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post7.jpg")))
Post.create!(
  :user_id => 4,
  :genre_id => 3,
  :title => "フットサルメンバー募集中",
  :content =>   "閲覧ありがとうございます。

  私はフットサルチーム「ZONe」のキャプテンをしているまっさーという者です。
  毎週土曜日に船橋市近辺でグラウンドを借りて、試合や練習をしています。

  メンバーは初心者も多く、お世辞にも強いチームとはいえません。
  それゆえに一緒に「楽しく」フットサルできる方を探しています。

  ご興味のある方はチャットで話しましょう！",
  :gender => 3,
  :prefecture_code => 12,
  :municipality => "船橋市",
  :image_id => post7.id,
  :age =>   41
)

post8 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post8.jpg")))
Post.create!(
  :user_id => 5,
  :genre_id => 4,
  :title => "UverworldのLIVEにいきませんか？",
  :content =>   "閲覧ありがとうございます。

  6月10日、Zeep東京で行われるUverworldのライブに一緒に行ける方探しています！

  2席連番で私と同行していだきます。
  お値段は定価の7,800円です。

  ご興味のある方はチャット待ってます！

  一緒にライブ楽しみましょう！！！！！",
  :gender => 3,
  :prefecture_code => 13,
  :municipality => "江東区",
  :image_id => post8.id,
  :age =>   43
)

post9 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post9.jpg")))
Post.create!(
  :user_id => 5,
  :genre_id => 5,
  :title => "肉フェスいきませんか？木更津公園",
  :content =>   "こんにちは！

  コロナで延期の可能性もありますが、
  6月20日に開催される「肉フェス」に一緒に行きませんか？

  お酒を飲む予定なので電車で行こうと考えています。

  私のように一緒に行く人いないけど肉食べたい方がいましたらチャットお待ちしております。笑",
  :gender => 3,
  :prefecture_code => 12,
  :municipality => "木更津市",
  :image_id => post9.id,
  :age =>   43
)

post10 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post10.jpg")))
Post.create!(
  :user_id => 5,
  :genre_id => 6,
  :title => "純粋に友達欲しい",
  :content =>   "実家を出て一人暮らしを始めたのですが、近くに友達がいません。

  休日はボーリングやカラオケがしたいです！

  一緒に行ってくれる方いませんかあああああ！？！？",
  :gender => 3,
  :prefecture_code => 12,
  :municipality => "木更津市",
  :image_id => post10.id,
  :age =>   43
)

post11 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post11.jpg")))
Post.create!(
  :user_id => 6,
  :genre_id => 1,
  :title => "HIITトレーニングで脂肪を燃やそう！(筋トレ)",
  :content =>   "こんにちは。
  私は木更津市の○○ジムに通っています。

  ○○ジムで一緒に汗を流しませんか？

  今流行のHIITトレーニングで10kg減が目標です。

  曜日や時間は相談しましょう！",
  :gender => 1,
  :prefecture_code => 12,
  :municipality => "松戸市",
  :image_id => post11.id,
  :age =>   37
)

post12 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post12.jpg")))
Post.create!(
  :user_id => 6,
  :genre_id => 2,
  :title => "資格取得目指して勉強しませんか？",
  :content =>   "こんにちは。
  私は現在、公認会計士の資格取得を目指して勉強中です。

  資格目指して一緒に切磋琢磨できる方を探しています！

  カフェなどで一緒に勉強してもよし、オンライン上でのやりとりでも構いません。

  勉強したくない気分の日などにお互いで背中を押し合いましょう。
  よろしくお願いします！",
  :gender => 3,
  :prefecture_code => 12,
  :municipality => "松戸市",
  :image_id => post12.id,
  :age =>   37
)

post13 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post13.jpg")))
Post.create!(
  :user_id => 7,
  :genre_id => 6,
  :title => "(渋谷)飲み友、呑み友募集中です！",
  :content =>   "こんにちは。
  新宿で一緒に飲みに行ける方を探しています！

  性別、年齢不問

  まずはチャットで仲良くなりたいです！",
  :gender => 3,
  :prefecture_code => 13,
  :municipality => "新宿区",
  :image_id => post13.id,
  :age =>   30
)

post14 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post14.jpg")))
Post.create!(
  :user_id => 7,
  :genre_id => 6,
  :title => "(渋谷)飲み友、呑み友募集中です！",
  :content =>   "こんにちは。
  渋谷で一緒に飲みに行ける方を探しています！

  性別、年齢不問

  まずはチャットで仲良くなりたいです！",
  :gender => 3,
  :prefecture_code => 13,
  :municipality => "渋谷区",
  :image_id => post14.id,
  :age =>   30
)

post15 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post15.jpg")))
Post.create!(
  :user_id => 8,
  :genre_id => 3,
  :title => "一緒に3on3　バスケットボールしませんか？",
  :content =>   "こんにちは
  ジェームズブラウンです。

  渋谷駅近くのコートで3on3しませんか？

  僕は暇さえあればバスケしてます。笑

  少し身体動かしたいと思ってる人、バスケ経験者大歓迎です！",
  :gender => 3,
  :prefecture_code => 13,
  :municipality => "渋谷区",
  :image_id => post15.id,
  :age =>   34
)

post16 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post16.jpg")))
Post.create!(
  :user_id => 9,
  :genre_id => 2,
  :title => "一緒に成長できる仲間が欲しい(エンジニア限定)",
  :content =>   "こんにちは。
  僕は今、エンジニア転職を目指して独学勉強中です。

  同じエンジニア志望の方や現役エンジニアで勉強仲間を探している方がいれば一番嬉しいです。

  勉強内容をお互いアウトプットして知識を定着させたり、
  Qiitaの発信に最低回数や期限などルールを設けて発信活動も積極的に行っていきたいと考えています。

  私自身まだまだ勉強足らずの初学者ゆえ、スキルは問いません。
  一緒に「高め合う」ことができる人が見つかったら嬉しいです。

  チャット待ってます。",
  :gender => 1,
  :prefecture_code => 13,
  :municipality => "世田谷区",
  :image_id => post16.id,
  :age =>   20
)

post17 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post17.jpg")))
Post.create!(
  :user_id => 9,
  :genre_id => 7,
  :title => "猫の里親探しています",
  :content =>   "こんにちは。
  現在、生まれたて子猫３匹の里親を探しています。

  ご希望の方は、ご指定の場所まで車でお伺いします。

  種や誕生日、性別などはチャットでご質問ください！
  ※世田谷区から車で1時間前後のエリアならOKです！",
  :gender => 3,
  :prefecture_code => 13,
  :municipality => "世田谷区",
  :image_id => post17.id,
  :age =>   20
)

post18 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post18.jpg")))
Post.create!(
  :user_id => 10,
  :genre_id => 3,
  :title => "(野球)キャッチャー募集中",
  :content =>   "こんにちは。
  男性で野球経験者の方探しています。

  鎌倉近辺で投げ込み付き合って欲しいです。

  お礼にお昼ご飯は御馳走します。

  あ、ピッチャーの方でお互いに投げ合うでも良いですね。
  チャット待ってます。",
  :gender => 1,
  :prefecture_code => 14,
  :municipality => "鎌倉市",
  :image_id => post18.id,
  :age =>   50
)

post19 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post19.jpg")))
Post.create!(
  :user_id => 10,
  :genre_id => 2,
  :title => "英会話のアウトプット友達(語学)(勉強)",
  :content =>   "こんにちは。
  英会話で習った英語をアウトプットし会える仲間を探しいます。

  オンラインで英語で会話することにより、知識を定着させたいです。

  頻度や日程は都度調整したいと考えています。",
  :gender => 3,
  :prefecture_code => 14,
  :municipality => "鎌倉市",
  :image_id => post19.id,
  :age =>   50
)

post20 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post20.jpg")))
Post.create!(
  :user_id => 11,
  :genre_id => 2,
  :title => "簿記仲間募集！勉強報告し合いたい！",
  :content =>   "こんにちは。
  私は現在、簿記の勉強をしています。

  私は自分に甘く、一人だと継続ができない為、
  毎日進捗を報告し合い、時には叱咤激励をくださる方を探しています。

  簿記以外の勉強をしている方でも構いません。
  LINEやFacebookなどでコミュニケーションをとっていきたいです！

  同じような仲間を探してる方がいましたらチャットください。
  よろしくお願いします。",
  :gender => 3,
  :prefecture_code => 14,
  :municipality => "相模原市",
  :image_id => post20.id,
  :age =>   31
)

post21 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post21.jpg")))
Post.create!(
  :user_id => 11,
  :genre_id => 3,
  :title => "打ちっぱなし行きませんか？(ゴルフ)",
  :content =>   "こんにちは。
  私はゴルフ始めたての初心者です。

  職場の付き合いで休日にゴルフに行くことが増えてきたのですが、
  へたくそすぎて恥ずかしいです。。。

  練習して上手になりたいので、同じような初心者の方を探しています！

  該当エリア内であれば車移動可能です！
  ご興味ある方、チャットお待ちしています！",
  :gender => 3,
  :prefecture_code => 14,
  :municipality => "相模原市",
  :image_id => post21.id,
  :age =>   31
)

post22 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post22.jpg")))
Post.create!(
  :user_id => 11,
  :genre_id => 6,
  :title => "ゴルフ仲間募集中",
  :content =>   "こんにちは。
  私はゴルフ始めたての初心者です。

  職場の付き合いで休日にゴルフに行くことが増えてきたのですが、
  へたくそすぎて恥ずかしいです。。。

  練習して上手になりたいので、同じような初心者の方を探しています！

  該当エリア内であれば車移動可能です！
  ご興味ある方、チャットお待ちしています！
  ",
  :gender => 2,
  :municipality => "相模原市",
  :prefecture_code => 14,
  :image_id => post22.id,
  :age =>   31
)

# post23 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post23.jpg")))
Post.create!(
  :user_id => 12,
  :genre_id => 1,
  :title => "川崎近辺でジム行きませんか？",
  :content =>   "一緒にベンチプレスあげませんか？

  川崎駅前のジムでやりましょう。",
  :gender => 1,
  :prefecture_code => 14,
  :municipality => "川崎市川崎区",
  # image_id: post23.id,
  :age =>   19
)

post24 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post24.jpg")))
Post.create!(
  :user_id => 12,
  :genre_id => 2,
  :title => "一緒にTOEICの勉強しませんか？",
  :content =>   "閲覧ありがとうございます。

  現在、TOEIC730点を目指して勉強中です。

  ○○図書館で一緒に勉強しませんか？

  一緒に勉強する人がいるという
  やらざるを得ない環境に身をおきたいです。

  基本土日であれば終日対応可能です。

  一緒に勉強して成長できるといいですね。",
  :gender => 1,
  :prefecture_code => 14,
  :municipality => "川崎市川崎区",
  :image_id => post24.id,
  :age =>   19
)

# 女性の投稿
post25 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post25.jpg")))
Post.create!(
  :user_id => 13,
  :genre_id => 1,
  :title => "(本川越駅周辺)ダイエット　ランニング仲間募集中！",
  :content =>   "こんにちは！
  本川越駅周辺で一緒にランニングしてくれる方募集中です！

  初心者なので全然早くは走れません。。。

  時間帯は6:00~8:00の間で、時間は1時間程度で考えています。
  曜日は相談しながらやっていきたいです！

  ご興味がある方は、チャットお待ちしてます！",
  :gender => 2,
  :prefecture_code => 11,
  :municipality => "川越市",
  :image_id => post25.id,
  :age =>   29
)

post26 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post26.jpg")))
Post.create!(
  :user_id => 13,
  :genre_id => 2,
  :title => "女性限定！勉強仲間募集(ジャンル不問)",
  :content =>   "女性限定で勉強仲間募集します！

  基本的に仕事をしているので、
  土日にルールを決めて勉強したいです！

  直接会うわけではなく、オンラインでやりとりしていきたいです！",
  :gender => 2,
  :image_id => post26.id,
  :age =>   29
)

post27 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post27.jpg")))
Post.create!(
  :user_id => 14,
  :genre_id => 2,
  :title => "(PHP)一緒にプログラミングの勉強しませんか？",
  :content =>   "プログラミング一緒にやりませんか？

  平日の朝に駅前のドトール集合で、
  勉強する習慣を形成しませんか！？！？(2時間前後)

  私は転職を目指して現在PHPを独学で勉強中です。

  勉強の習慣形成はもちろん、
  IT業界の情報も共有して一緒に成長していけたら嬉しいです。

  よろしくおねがいします！",
  :gender => 2,
  :prefecture_code => 11,
  :municipality => "所沢市",
  :image_id => post27.id,
  :age =>   29
)

post28 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post28.jpg")))
Post.create!(
  :user_id => 14,
  :genre_id => 2,
  :title => "(PHP)一緒にプログラミングの勉強しませんか？",
  :content =>   "プログラミング一緒にやりませんか？

  平日の朝に駅前のドトール集合で、
  勉強する習慣を形成しませんか！？！？(2時間前後)

  私は転職を目指して現在PHPを独学で勉強中です。

  勉強の習慣形成はもちろん、
  IT業界の情報も共有して一緒に成長していけたら嬉しいです。

  よろしくおねがいします！
  ※所沢市でも募集してます。",
  :gender => 2,
  :prefecture_code => 11,
  :municipality => "秋津市",
  :image_id => post28.id,
  :age =>   29
)

post29 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post29.jpg")))
Post.create!(
  :user_id => 15,
  :genre_id => 2,
  :title => "(Python)一緒にプログラミングの勉強しませんか？",
  :content =>   "プログラミング一緒にやりませんか？

  平日の朝に駅前のスターバックス集合で、
  勉強する習慣を形成しませんか！？！？(2時間前後)

  私は転職を目指して現在Pythonを独学で勉強中です。

  勉強の習慣形成はもちろん、
  IT業界の情報も共有して一緒に成長していけたら嬉しいです。

  よろしくおねがいします！",
  :gender => 3,
  :prefecture_code => 11,
  :municipality => "川口市",
  :image_id => post29.id,
  :age =>   43
)

Post.create!(
  :user_id => 15,
  :genre_id => 1,
  :title => "ヨガ仲間探しています！",
  :content =>   "はじめまして！
  川口駅前にあるヨガ教室に一緒に通っていくれる人募集中です！

  私は最近始めたばかりなので、初心者です。
  同じような初心者の方と一緒に通って仲良くなれたら嬉しいです！

  チャット待ってます！",
  :gender => 2,
  :prefecture_code => 11,
  :municipality => "川口市",
  :age =>   43
)

Post.create!(
  :user_id => 15,
  :genre_id => 1,
  :title => "ヨガ仲間探しています！",
  :content =>   "はじめまして！
  西川口駅前にあるヨガ教室に一緒に通っていくれる人募集中です！

  私は最近始めたばかりなので、初心者です。
  同じような初心者の方と一緒に通って仲良くなれたら嬉しいです！

  チャット待ってます！
  ※川口駅前のヨガ教室でも可能です！",
  :gender => 2,
  :prefecture_code => 11,
  :municipality => "西川口市",
  :age =>   43
)

post30 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post30.jpg")))
Post.create!(
  :user_id => 16,
  :genre_id => 3,
  :title => "ダイビング仲間募集！",
  :content =>   "はじめまして！
  訪問ありがとうございます！

  私は趣味でダイビングをやっています。

  年に4,5回国内国外問わず、潜っています。

  いつもダイビングツアーなるものに参加しているのですが、
  初対面の方がバディになることが多い為、仲良しな知り合いと潜れたらなと思い募集することにしました。

  いきなり国外はハードルが高いと思うので、
  まずは伊豆らへんで一潜りいかがでしょうか？",
  :gender => 2,
  :image_id => post30.id,
  :age =>   29
)

post31 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post31.jpg")))
Post.create!(
  :user_id => 16,
  :genre_id => 2,
  :title => "(TypeScript)一緒にプログラミングの勉強しませんか？",
  :content =>   "プログラミング一緒にやりませんか？

  平日の朝に駅前のサンマルク集合で、
  勉強する習慣を形成しませんか！？！？(2時間前後)

  私は転職を目指して現在TypeScriptを独学で勉強中です。
  ※JavaScriptは一通り勉強してます。

  勉強の習慣形成はもちろん、
  IT業界の情報も共有して一緒に成長していけたら嬉しいです。

  よろしくおねがいします！",
  :gender => 3,
  :prefecture_code => 12,
  :municipality => "市川市",
  :image_id => post31.id,
  :age =>   29
)

post32 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post32.jpg")))
Post.create!(
  :user_id => 17,
  :genre_id => 2,
  :title => "(WordPress)一緒にプログラミングの勉強しませんか？副業目的",
  :content =>   "プログラミング一緒にやりませんか？

  平日の朝に駅前のプロント集合で、
  勉強する習慣を形成しませんか！？！？(2時間前後)

  私は副業で稼ぐために現在WordPressを独学で勉強中です。
  ※HTML、CSSは一通り勉強済みです。

  LP制作やHP制作を個人でやっていきたいと思っています。

  勉強の習慣形成はもちろん、
  副業の情報も共有して一緒に成長していけたら嬉しいです。

  よろしくおねがいします！",
  :gender => 3,
  :prefecture_code => 12,
  :municipality => "柏市",
  :image_id => post32.id,
  :age =>   28
)

post33 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post33.jpg")))
Post.create!(
  :user_id => 17,
  :genre_id => 1,
  :title => "柏市○○川横をランニングしませんか？",
  :content =>   "はじめまして！

  ○○川の河川敷を一緒にランニングしてくれる人を募集しています！

  頻度は週3回程度、時間帯は夜(19時以降で)で考えています。

  まったく速く走れないので、同じような方だと嬉しいです。
  ※私は、1km走るのに8分ぐらいかかります。

  運動不足を感じている柏市のそこのあなた！
  チャット待ってますね！",
  :gender => 2,
  :prefecture_code => 12,
  :municipality => "柏市",
  :image_id => post33.id,
  :age =>   28
)

post34 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post34.jpg")))
Post.create!(
  :user_id => 18,
  :genre_id => 5,
  :title => "稲毛海岸 ××フェスティバルに一緒に行きませんか！",
  :content =>   "はじめまして！

  7月10日に開催される××フェスティバルに一緒に行ってくれる人を探しています！

  毎年一人で行っているのですが、
  一緒に楽しさを共有できる友達がいたらもっと楽しいと思い、募集することにしました。

  よろしくおねがいします！",
  :gender => 2,
  :prefecture_code => 12,
  :municipality => "千葉市稲毛区",
  :image_id => post34.id,
  :age =>   26
)

post35 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post35.jpg")))
Post.create!(
  :user_id => 18,
  :genre_id => 4,
  :title => "NovelbrightのLIVE同行者募集です！",
  :content =>   "閲覧ありがとうございます！

  ○月×日に幕張メッセで開催されるNovelbrightのLIVEに一緒に行きませんか？

  2枚連番でチケットがあるのですが、
  一緒に行く予定だった友人が行けなくなってしまった為、募集中です。

  Novelbright好きであれば誰でも構いません！
  お値段は当日定価でいただければ大丈夫です！

  一緒にLIVEをたのしみましょう！",
  :gender => 3,
  :prefecture_code => 12,
  :municipality => "千葉市美浜区",
  :image_id => post35.id,
  :age =>   26
)

post36 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post36.jpg")))
Post.create!(
  :user_id => 19,
  :genre_id => 4,
  :title => "KAT-TUNのLIVE同行者募集です！",
  :content =>   "閲覧ありがとうございます！

  ○月×日に東京ドームで開催されるKAT-TUNのLIVEに一緒に行きませんか？

  2枚連番でチケットがあるのですが、
  一緒に行く予定だった友人が行けなくなってしまった為、募集中です。

  KAT-TUN好きであれば誰でも構いません！
  お値段は当日定価でいただければ大丈夫です！

  一緒にLIVEをたのしみましょう！",
  :gender => 2,
  :prefecture_code => 13,
  :municipality => "文京区",
  :image_id => post36.id,
  :age =>   31
)

post37 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post37.jpg")))
Post.create!(
  :user_id => 19,
  :genre_id => 3,
  :title => "スノボ(スノーボード)仲間募集中！",
  :content =>   "はじめまして！
  訪問ありがとうございます！

  私は趣味でスノーボードをやっています。

  年に4,5回北関東メインで滑りに行っています。
  ※移動手段は車です。

  自前の板などはなく、
  ウェアをもっているだけの中級者です。

  ジャンプ台などは使いません。

  こんな私ですが、一緒に楽しく滑ることのできる方がいましたら是非よろしくお願いします！",
  :gender => 2,
  :image_id => post37.id,
  :age =>   31
)

post38 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post38.jpg")))
Post.create!(
  :user_id => 20,
  :genre_id => 6,
  :title => "将棋友達を探しています",
  :content =>   "はじめまして！
  訪問ありがとうございます！

  私は趣味で将棋をやっています。

  地元の公園や私の家で一緒に将棋やりませんか？
  ※同じぐらいの年齢の方だと嬉しいです。",
  :gender => 3,
  :prefecture_code => 13,
  :municipality => "羽村市",
  :image_id => post38.id,
  :age =>   52
)

post39 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post39.jpg")))
Post.create!(
  :user_id => 21,
  :genre_id => 2,
  :title => "(Go)一緒にプログラミングの勉強しませんか？",
  :content =>   "一緒にプログラミングの勉強しませんか？

  平日の朝に駅前の珈琲館で、
  勉強する習慣を形成しませんか！？(2時間前後)

  私は転職を目的に現在Goを独学で勉強中です。

  勉強の習慣形成はもちろん、
  IT業界の情報も共有して一緒に成長していけたら嬉しいです。

  よろしくおねがいします！",
  :gender => 3,
  :prefecture_code => 13,
  :municipality => "港区",
  :image_id => post39.id,
  :age =>   21
)

post40 = backend.upload(File.open(Rails.root.join("app/assets/images/posts/post40.jpg")))
Post.create!(
  :user_id => 22,
  :genre_id => 1,
  :title => "一緒にジムに通って痩せませんか？",
  :content =>   "ジム友募集中です。

  最近ジムに通い始めたのですが、自分の意思が弱く一人ではなかなか継続して通うことができません。

  そこで毎日決まった曜日、決まった時間に一緒にジムに行ってくれる方を探しています。
  ※女性限定でお願いします。

  希望エリア内であればジムを指定していただいても構いません。
  チャット待ってます。よろしくお願いします！",
  :gender => 2,
  :prefecture_code => 14,
  :municipality => "海老名市",
  :image_id => post40.id,
  :age =>   32
)