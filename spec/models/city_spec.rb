require 'rails_helper'

# describe City do
#   describe 'validations' do
#     it 'is valid with a name and population number' do
#       city = build(:city)
#       expect(city).to be_valid
#     end
#     it 'is invalid without a name' do
#       city = build(:city, name: nil)
#       city.valid?
#       expect(city.errors[:name]).to include "can't be blank"
#     end
#     it 'is invalid without a population' do
#       city = build(:city, population: nil)
#       city.valid?
#       expect(city.errors[:population]).to include "can't be blank"
#     end
#   end
#   describe 'associations' do
#     it 'has belongs to a country' do
#       assc = described_class.reflect_on_association(:country)
#       expect(assc.macro).to eq :belongs_to
#     end
#   end
#   it 'has a valid factory' do
#     expect(build(:city)).to be_valid
#   end
# end

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
