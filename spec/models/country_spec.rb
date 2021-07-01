require 'rails_helper'

describe Country do
  it 'is valid with a name and a population number' do
    country = Country.new
    country.name = 'France'
    country.population = 67_892_374_217_863_796
    expect(country).to be_valid
  end
  it 'is invalid without a name' do
    country = Country.new(name: nil)
    country.valid?
    expect(country.errors[:name]).to include("can't be blank")
  end
  it 'is invalid without a population number' do
    country = Country.new(population: nil)
    country.valid?
    expect(country.errors[:population]).to include("can't be blank")
  end
end
