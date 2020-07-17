class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :likes
  has_many :like_users, through: :likes, source: 'user'

  has_many :comments, dependent: :destroy

  def liked_by(current_user)
    Like.find_by(user_id: current_user.id, post_id: id)
  end

  has_many :hashtag_posts, dependent: :destroy
  has_many :hashtags, through: :hashtag_posts

  after_create do
    post = Post.find_by(id: id)
    hashtags = hashbody.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
    hashtags.uniq.map do |hashtag|
      tag = Hashtag.find_or_create_by(hashname: hashtag.downcase.delete('#'))
      post.hashtags << tag
    end
   end

   before_update do
     post = Post.find_by(id: id)
     post.hashtags.clear
     hashtags = hashbody.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
     hashtags.uniq.map do |hashtag|
     tag = Hashtag.find_or_create_by(hashname: hashtag.downcase.delete('#'))
     post.hashtags << tag
   end
  end

end
