class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :likes
  has_many :like_users, through: :likes, source: 'user'
end
