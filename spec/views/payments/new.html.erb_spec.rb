require 'rails_helper'
RSpec.describe 'payments/new.html.erb', type: :view do
  before do
  end
  describe 'the add-category navigation section' do
    it 'generates a link to the categories path' do
      expect(rendered).to have_link('<', href: categories_path, class: 'arrow-left')
    end
    it 'generates the Add New Payment heading' do
      expect(rendered).to have_selector('h1.newpay', text: 'Add New Payment')
    end
    it 'generates a logout button' do
      expect(rendered).to have_button('LOG OUT', class: 'destry', type: 'submit')
    end
  end
  describe 'the form section' do
    it 'renders the form partial' do
      expect(rendered).to render_template(partial: '_form')
    end
  end
  describe 'the link to the payments path' do
    it 'generates a link to the payments path' do
      expect(rendered).to have_link('<', href: payments_path)
    end
  end
end
