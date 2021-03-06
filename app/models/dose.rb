class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :quantity, presence: true
  validates :units, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
end
