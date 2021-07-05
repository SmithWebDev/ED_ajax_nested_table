class Country < ApplicationRecord
  has_many :cities
  validates :name, :population, presence: true
end
