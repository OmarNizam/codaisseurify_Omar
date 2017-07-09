FactoryGirl.define do
  factory :song do
    title { Faker::Song.title }
  end
end
