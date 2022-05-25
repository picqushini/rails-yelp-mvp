class Review < ApplicationRecord
  belongs_to :restaurant

  # ====================== VALIDATIONS ===================================
  # A rating should be an integer
  validates :rating, numericality: { only_integer: true }
  # A review must have content and a rating.
  validates :content, presence: true
  # A review’s rating must be a number between 0 and 5
  validates :rating, inclusion: { in: (0..5).to_a }
end
