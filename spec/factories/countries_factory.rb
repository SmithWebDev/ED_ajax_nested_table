FctoactoryBot.define do
  factory :country do
    name { "MyString" }
    population { 1 }
  end
end
FactoryBot.define do
  factory :country do
    name { Faker::Address.country }
    population { Faker::Number.number(7) }
  end
end
