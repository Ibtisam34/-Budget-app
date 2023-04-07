require 'rails_helper'
RSpec.describe "users/index.html.erb", type: :view do
  it "displays the login and signup buttons" do
    render
    expect(rendered).to have_selector("section.main")
    expect(rendered).to have_selector("h1.title", text: "BudgetOnLine")
    expect(rendered).to have_selector("button.login a[href='#{new_user_session_path}']", text: "SIGN IN")
    expect(rendered).to have_selector("button.signup a[href='#{new_user_registration_path}']", text: "SIGN UP")
  end
end