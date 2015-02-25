FactoryGirl.define do
  factory :article do
    title Faker::Name.title
    summary Faker::Lorem.characters(200)
    date_publish Time.zone.now
    body Faker::Lorem.paragraph(4)
  end
end
