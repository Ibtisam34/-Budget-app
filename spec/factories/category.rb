FactoryBot.define do
  factory :category do
    name { 'Myname' }
    icon { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'test_image.png'), 'image/png') }
    user { create(:user) } # assuming you have a factory for User
  end
end
