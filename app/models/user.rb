class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associate user---PostImages
  has_many :post_images, dependent: :destroy

  # Associate user---PostComments
  has_many :post_comments, dependent: :destroy

  # Associate user---Favorites
  has_many :favorites, dependent: :destroy
end
