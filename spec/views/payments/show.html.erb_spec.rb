require 'rails_helper'
RSpec.feature "Logout", type: :view do
  scenario "User logs out successfully" do
    user = FactoryBot.create(:user)
    visit login_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"
    click_button "Log out"
    expect(page).to have_content("You have been logged out.")
  end
end