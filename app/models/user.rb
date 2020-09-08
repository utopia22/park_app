class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 50 }

  mount_uploader :image_name, ImageUploader

  has_many :posts, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :like_posts, through: :likes, source: :post

  has_many :comments, dependent: :destroy

  def self.guest
    find_or_create_by!(name: 'マーズギャ', email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end

end
