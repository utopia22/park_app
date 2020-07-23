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

  after_create do
    post = Post.find_by(id: self.id)
    hashtags = self.hashbody.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
    hashtags.uniq.map do |hashtag|
    tag = Hashtag.find_or_create_by(hashname: hashtag.downcase.delete('#'))
    post.hashtags << tag
    end
  end

  before_update do
    post = Post.find_by(id: self.id)
    post.hashtags.clear
    hashtags = self.hashbody.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
    hashtags.uniq.map do |hashtag|
    tag = Hashtag.find_or_create_by(hashname: hashtag.downcase.delete('#'))
    post.hashtags << tag
   end
  end

end
