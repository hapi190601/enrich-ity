FactoryBot.define do
  factory :inquiry do
    name { Faker::Lorem.characters(number: 5) }
    email { Faker::Internet.email }
    title { Faker::Lorem.characters(number: 15) }
    content { Faker::Lorem.characters(number: 50) }
  end
end