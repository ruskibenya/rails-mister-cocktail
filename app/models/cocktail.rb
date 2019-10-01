class Cocktail < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_attributes_and_ingredients,
    against: [ :name, :base_spirit, :glass, :flavor, :difficulty, :description, :strength, :garnish ],
    associated_against: {
      ingredients: [ :name ]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  belongs_to :user
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy


  has_many :favorite_cocktails
  has_many :favorited_by, through: :favorite_cocktails, source: :user

  validates :name, presence: true
  # TODO:
  # validates :name, uniqueness: true
  validates :difficulty, inclusion: { in: %w(Simple Medium Complicated),
    message: "%{value} is not a valid difficulty" }
  validates :strength, inclusion: { in: %w(Light Medium Strong),
    message: "%{value} is not a valid difficulty" }


  serialize :flavor
  serialize :ingredients
  serialize :instruction
end
