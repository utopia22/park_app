class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    like = Like.new
    like.user_id = current_user.id
    like.post_id = params[:post_id]

    if like.save
      redirect_to posts_path, success: 'いいねしました'
    else
      redirect_to posts_path, success: 'dangerに失敗しました'
    end
end

def destroy
    @like = Like.find_by(user_id: current_user.id, post_id: params[:post_id])
    @like.destroy
    redirect_to posts_path, success: 'いいねを取り消しました'
  end

  private
    def like_params
      params.permit(:post_id)
    end
