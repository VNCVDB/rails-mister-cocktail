class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews
  validates :name, uniqueness: true, presence: true, allow_blank: false
  mount_uploader :photo, PhotoUploader
end
