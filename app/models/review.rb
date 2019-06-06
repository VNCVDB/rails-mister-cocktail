class Review < ApplicationRecord
  belongs_to :cocktail # only one user
  validates :content, presence: true
  validates :rating, inclusion: { in: 0..5 }
end
