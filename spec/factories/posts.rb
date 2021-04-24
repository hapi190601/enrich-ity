FactoryBot.define do
  factory :post do
    title { Faker::Lorem.characters(number: 10) }
    content { Faker::Lorem.characters(number: 100) }
    user_id { "1" }
    genre_id { "2" }
    gender { "3" }
  end
end