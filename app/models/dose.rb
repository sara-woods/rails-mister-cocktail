class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :cocktail, presence: true
  validates :description, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail, message: "can only be added once" }
end
