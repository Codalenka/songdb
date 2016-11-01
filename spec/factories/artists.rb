FactoryGirl.define do
  factory :artist do
    name            { Faker::Name.name}
    bio             { Faker::Lorem.sentence }
  end
end
