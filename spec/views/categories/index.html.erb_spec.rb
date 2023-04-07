require 'rails_helper'
RSpec.feature 'Categories', type: :feature do
  let(:user) { FactoryBot.create(:user) }
  before do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password(6 characters)', with: user.password
    click_button 'Log in'
    sleep(1)
  end
  describe 'index page' do
    it 'displays a list of categories' do
      category1 = Category.create!(
        name: 'Category 1',
        icon: Rack::Test::UploadedFile.new('spec/fixtures/test_image.png', 'image/jpg'), author_id: user.id
      )
      visit categories_path
      expect(page).to have_content(category1.name)
    end
  end
end
