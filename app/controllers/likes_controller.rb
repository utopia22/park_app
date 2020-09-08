class LikesController < ApplicationController
  before_action :set_post

  def index
    @like_post = current_user.like_posts
    flash[:notice] = "ログイン済ユーザーのみいいねをつけられます" unless user_signed_in?
  end

  def create
     @like = Like.create(user_id: current_user.id, post_id: params[:post_id])
     @likes = Like.where(post_id: params[:post_id])
     @post.reload
   end

   def destroy
     like = Like.find_by(user_id: current_user.id, post_id: params[:post_id])
     like.destroy
     @likes = Like.where(post_id: params[:post_id])
     @post.reload
   end

   private

   def set_post
     @post = Post.find(params[:post_id])
   end


end
