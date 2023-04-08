require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.create(name: 'riyana', email: 'riyanagwl@test.com', password: 'youarehigh') }

  before { subject.save }

  it 'subject should be valid' do
    expect(subject).to be_valid
  end

  describe 'check for validations' do
    it 'not valid without name' do
      subject.name = ''
      expect(subject).to_not be_valid
    end

    it 'have correct name' do
      subject.name = 'riyana'
      expect(subject).to be_valid
    end

    it 'is not valid without password' do
      subject.password = 'youarehigh'
      expect(subject).to be_valid
    end
  end
end
