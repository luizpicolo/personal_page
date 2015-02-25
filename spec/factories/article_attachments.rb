FactoryGirl.define do
  factory :article_attachment do
    title Faker::Name.title
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'assets', 'example.jpg')) }
    hightlight false
  end
end
