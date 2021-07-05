require 'rails_helper'

describe Country do
  describe 'validations' do
    it 'is valid with a name and a population number' do
      country = build(:country)
      expect(country).to be_valid
    end

    it 'is invalid without a name' do
      country = build(:country, name: nil)
      country.valid?
      expect(country.errors[:name]).to include "can't be blank"
    end
    it 'is invalid without a population' do
      country = build(:country, population: nil)
      country.valid?
      expect(country.errors[:population]).to include "can't be blank"
    end
  end
  describe 'associations' do
    it 'has many cities' do
      assc = described_class.reflect_on_association(:cities)
      expect(assc.macro).to eq :has_many
    end
  end
  it 'has a valid factory' do
    expect(build(:country)).to be_valid
  end
end

describe Country do
  context 'associations' do
    it { should have_many :cities }
  end
  context 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :population }
  end
  it 'has a valid factory' do
    expect(build(:country)).to be_valid
  end
end
