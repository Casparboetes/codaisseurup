FactoryBot.define do
  factory :event do
    name              { Faker::Lorem.name(40) }
    description       { Faker::Lorem.sentence(40) }
    location          { Faker::Address.city }
    price             { Faker::Commerce.price }
    capacity          5
    includes_food     true
    includes_food     true
    starts_at         true
    ends_at           true
    user              { build(:user) }


    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
