class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy
  has_many :like_users, through: :likes, source: 'user'

  has_many :comments, dependent: :destroy

  has_many :hashtag_posts, dependent: :destroy
  has_many :hashtags, through: :hashtag_posts

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

  acts_as_taggable

end
