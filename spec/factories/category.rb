FactoryBot.define do
  factory :category do
    sequence(:name) { |n| "Example Category #{n}" }
    author { FactoryBot.create(:user) }
    icon { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'test_image.png'), 'image/png') }
  end
end