require 'rails_helper'
RSpec.describe 'payments/index.html.erb', type: :view do
  before(:each) do
    assign(:payments, [
      Payment.create(amount: 10),
      Payment.create(amount: 20)
    ])
    render
  end
  it 'displays a list of payments' do
    expect(rendered).to have_selector('div.payments') do |div|
      expect(div).to have_selector('div.payment', count: 2)
    end
  end
  it 'displays a link to create a new payment' do
    expect(rendered).to have_selector('div.new-payment') do |div|
      expect(div).to have_link('New payment', href: new_payment_path)
    end
  end
end
