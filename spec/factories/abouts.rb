FactoryGirl.define do
  factory :about do
    title Faker::Name.title
    body Faker::Lorem.characters(200)
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'assets', 'example.jpg')) }
  end
end
