require 'rails_helper'

RSpec.describe 'Payments', type: :request do
  describe 'payments' do
    it 'returns http success' do
      get payments_path
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET /payments' do
    it 'returns http success' do
      get payments_path
      expect(response).to have_http_status(302)
    end
  end
end
