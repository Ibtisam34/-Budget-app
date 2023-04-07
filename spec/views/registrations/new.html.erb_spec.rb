require 'rails_helper'
RSpec.describe 'devise/registrations/new', type: :view do
  let(:resource_name) { :user }
  let(:resource) { build(:user) } # assuming you have a user factory set up
  before do
    render
  end
  it 'displays the registration form' do
    expect(rendered).to have_selector('form[action="/users"]')
    expect(rendered).to have_selector('input[name="user[name]"][type="text"]')
    expect(rendered).to have_selector('input[name="user[email]"][type="email"]')
    expect(rendered).to have_selector('input[name="user[password]"][type="password"]')
    expect(rendered).to have_selector('input[name="user[password_confirmation]"][type="password"]')
    expect(rendered).to have_selector('input[type="submit"][value="Next"]')
  end
end