class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: { message: 'must have content' }
  validates :rating, presence: { message: 'must have rating' }
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5}

end
