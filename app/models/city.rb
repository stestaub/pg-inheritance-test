class City < ApplicationRecord
  validates :name, length: { minimum: 1, maximum: 50 }, presence: true
  validates :population, numericality: { greater_than: 0 }, presence: true
end
