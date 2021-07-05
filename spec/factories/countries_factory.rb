FactoryBot.define do
  factory :country do
    name { Faker::Address.country }
    population { Faker::Number.number(digits: 7) }
  end
end
