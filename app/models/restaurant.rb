class Restaurant < ApplicationRecord
  #  A restaurant has many reviews and when a restaurant is destroyed, all of its reviews must be destroyed as well.
  has_many :reviews, dependent: :destroy

  # ====================== VALIDATIONS ===================================
  # A restaurant must have a name, an address and a category.
  validates :name, :address, :category, presence: true

  # A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
