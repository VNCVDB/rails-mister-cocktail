class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true, allow_blank: false
  # validates_uniqueness_of :ingredient_id, scope: :cocktail_id
  validates :cocktail, uniqueness: { scope: :ingredient }
end
