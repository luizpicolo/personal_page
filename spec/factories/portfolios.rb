FactoryGirl.define do
  factory :portfolio do
    title Faker::Name.title
    link Faker::Internet.url 
  end
end
