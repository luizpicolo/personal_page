FactoryGirl.define do
  factory :contact do
    title Faker::Name.title
    link Faker::Internet.url 
  end
end
