FactoryBot.define do
  factory :post do
    title { Faker::Lorem.characters(number: 10) }
    content { Faker::Lorem.characters(number: 100) }
    age { "20" }
    gender { 3 }
    prefecture_code { 14 }
    municipality { Faker::Lorem.characters(number: 5) }
    image_id  { Faker::Lorem.characters(number: 20) }
  end
end