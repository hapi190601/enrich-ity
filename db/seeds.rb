# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: "admin@test.com",
  password: "password"
)

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

