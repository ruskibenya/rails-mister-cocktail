class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cocktails
  has_many :reviews
  has_many :favorite_cocktails
  has_many :favorites, through: :favorite_cocktails, source: :cocktail

  mount_uploader :photo, PhotoUploader

end
