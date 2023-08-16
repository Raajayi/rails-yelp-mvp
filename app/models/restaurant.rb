# Restaurant creates restaurants
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY_OPTIONS = %w[chinese italian japanese french belgian].freeze

  validates :category, inclusion: { in: CATEGORY_OPTIONS }
  validates :name, presence: true
  validates :address, presence: { message: 'must have and address' }
end
