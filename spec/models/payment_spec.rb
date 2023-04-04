require 'rails_helper'

RSpec.describe Payment, type: :model do
  subject do
    user = User.create(name: 'Riyana', email: 'riyanagwl@test.come', password: '167890')
    Payment.new(author: user, name: 'hobby', amount: 3)
  end

  before { subject.save }

  it 'subject should be valid' do
    expect(subject).to be_valid
  end

  describe 'validations' do
    it 'not valid without name' do
      subject.name = ''
      expect(subject).to_not be_valid
    end

    it 'valid if amount isnt greater than zero' do
      subject.amount = 0
      expect(subject).to be_valid
    end

    it 'the amount to be an integer' do
      expect(subject.amount).to be_integer
    end
  end
end
