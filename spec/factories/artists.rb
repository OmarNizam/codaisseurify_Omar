FactoryGirl.define do
  factory :artist do
    name { Faker::Name.artist }
  end
end
