class PostImage < ApplicationRecord
  # Associate to User
  belongs_to :user
  attachment :image

  # Associate PostImage---PostComments
  has_many :post_comments, dependent: :destroy

  # Associate Favorite
  has_many :favorites, dependent: :destroy

  # Validations
  validates :shop_name, presence: true
  validates :image, presence: true

  # Favorites
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
