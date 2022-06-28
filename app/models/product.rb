class Product < ApplicationRecord

  # Relationships
  belongs_to :restaurant
  has_many :ingredients
end
