require 'rails_helper'

describe City do
  it 'is valid with a name and population number' do
    france = Country.create(name: 'France', population: 60_835_219_806)
    city = City.new(country_id: france.id)
    city.name = 'Paris'
    city.population = 67_905_432
    expect(city).to be_valid
  end
  it 'is invalid without a name' do
    city = City.new(name: nil)
    city.valid?
    expect(city.errors[:name]).to(include("can't be blank"))
  end
  it 'is invalid without a population number' do
    city = City.new(population: nil)
    city.valid?
    expect(city.errors[:population]).to(include("can't be blank"))
  end
end
