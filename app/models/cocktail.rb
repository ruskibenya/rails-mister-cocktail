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



  # TODO:
  # validates :name, uniqueness: true
  # validates :difficulty, inclusion: { in: %w(Simple Medium Complicated),
  #   message: "%{value} is not a valid difficulty" }
  # validates :strength, inclusion: { in: %w(Light Medium Strong),
  #   message: "%{value} is not a valid difficulty" }

  # validates :name, presence: true, if: :active_or_name?
  # validates :description, presence: true, if: :active_or_name?
  # validates :difficulty, presence: true, if: :active_or_name?
  # validates :base_spirit, presence: true, if: :active_or_name?


  # validates :ingredients, presence: true, if: :active_or_ingred?
  # validates :directions, presence: true, if: :active_or_direct?


  # def active?
  #   status == 'active'
  # end

  # def active_or_name?
  #   status.include?('name') || active?
  # end

  # def active_or_ingred?
  #   status.include?('ingred') || active?
  # end

  # def active_or_direct?
  #   status.include?('direct') || active?
  # end



  serialize :flavor
  serialize :ingredients
  serialize :instruction

  mount_uploader :photo, PhotoUploader

end
