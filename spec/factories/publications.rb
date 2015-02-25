FactoryGirl.define do
  factory :publication do
    title Faker::Name.title
    date_publish Time.zone.now
    description Faker::Lorem.paragraph(4)
    arquive { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'file', 'example.pdf')) }
  end

end
