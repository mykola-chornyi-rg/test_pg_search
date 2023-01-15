FactoryBot.define do
  factory :character do
    name { Faker::Name.unique.name }
    information  { Faker::Lorem.sentence(word_count: 15000)  }
  end
end
