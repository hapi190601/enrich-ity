FactoryBot.define do
  factory :notification do
    action { Faker::Lorem.characters(number: 5) }
  end
end