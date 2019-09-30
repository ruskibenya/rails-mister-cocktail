class Review < ApplicationRecord
  belongs_to :cocktail
  belongs_to :user
  validates :content, length: { minimum: 20 }
  validates :rating, presence: true
end
