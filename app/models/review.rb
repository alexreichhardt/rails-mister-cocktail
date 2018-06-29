class Review < ApplicationRecord
  belongs_to :cocktail
  validates :rating, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :rating, numericality: { only_integer: true }
  validates :username, presence: true
  validates :content, presence: true
end

