class Ingredient < ApplicationRecord
  has_many :doses

  validates :name, presence: true
  validates :name, uniqueness: true

  mount_uploader :photo, PhotoUploader
end
