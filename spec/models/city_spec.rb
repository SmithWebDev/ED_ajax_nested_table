require 'rails_helper'

describe City do
  context 'associations' do
    it { should belong_to(:country) }
  end
  context 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :population }
  end
  it 'has a valid factory' do
    expect(build(:city)).to be_valid
  end
end
