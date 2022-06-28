class Restaurant < ApplicationRecord

  # Relationships
  has_many :products, dependent: :destroy
end
