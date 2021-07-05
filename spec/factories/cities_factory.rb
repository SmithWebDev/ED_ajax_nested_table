FactoryBot.define do
  factory :city do
    association :country
    name { Faker::Address.country }
    population { Faker::Number.number(digits: 7) }
  end
end
