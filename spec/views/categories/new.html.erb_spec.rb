require 'rails_helper'
RSpec.describe "Categories", type: :feature do
  describe "index page" do
    it "displays a list of categories" do
      category1 = create(:category, name: "Category 1")
      category2 = create(:category, name: "Category 2")
      visit categories_path
      expect(page).to have_content(category1.name)
      expect(page).to have_content(category2.name)
    end
  end
end
