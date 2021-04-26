FactoryBot.define do
  factory :room do
    name { Faker::Lorem.characters(:number => 5) }
  end
end
