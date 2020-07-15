class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :likes
  has_many :like_users, through: :likes, source: 'user'

  has_many :comments, dependent: :destroy

  def liked_by(current_user)
    Like.find_by(user_id: current_user.id, post_id: id)
  end
end
