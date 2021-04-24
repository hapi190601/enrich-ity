FactoryBot.define do
  factory :direct_message do
    message { Faker::Lorem.characters(number: 10) }
  end
end