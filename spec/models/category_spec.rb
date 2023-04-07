require 'rails_helper'
RSpec.describe Category, type: :model do
  let(:user) { User.create(name: 'Riyana', email: 'riyanagwl@test.come', password: 'Queen') }
  subject do
    Category.new(author: user, name: 'gym', icon: fixture_file_upload(Rails.root.join('spec', 'fixtures', 'test_image.png'), 'image/png'))
  end
  before { subject.save }
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  describe 'validations' do
    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
    it 'is not valid without an icon' do
      subject.icon = nil
      expect(subject).to_not be_valid
    end
  end
end
