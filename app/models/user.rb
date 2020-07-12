class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 50 }

  mount_uploader :image_name, ImageUploader

  has_many :likes, dependent: :destroy
  has_many :like_posts, through: :likes, source: :post
end
