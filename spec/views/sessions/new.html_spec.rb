require 'rails_helper'
RSpec.feature "User Login", :type => :feature do
  scenario "User logs in with valid credentials" do
    user = create(:user) # create a user instance using the user factory
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password(6 characters)", with: user.password
    click_button "Log in"
    expect(page).to have_content "Signed in successfully."
    expect(page).to have_current_path(root_path)
  end
end