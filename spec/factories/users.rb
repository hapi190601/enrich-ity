FactoryBot.define do
  factory :user do
    name { Faker::Lorem.characters(number: 10) }
    name_kana { Faker::Lorem.characters(number: 10) }
    nickname { Faker::Lorem.characters(number: 10) }
    gender { "1" }
    birthday { "1999-01-23"}
    prefecture_code { "14" }
    municipality { Faker::Lorem.characters(number: 5) }
    postal_code { "20500011" }
    nearest_station { Faker::Lorem.characters(number: 3) }
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
  end
end