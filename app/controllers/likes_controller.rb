class LikesController < ApplicationController
  before_action :set_park

  def index
    @like_park = current_user.like_parks
    flash[:notice] = "ログイン済ユーザーのみいいねをつけられます" unless user_signed_in?
  end

  def create
     @like = Like.create(user_id: current_user.id, park_id: params[:park_id])
     @likes = Like.where(park_id: params[:park_id])
     @park.reload
   end

   def destroy
     like = Like.find_by(user_id: current_user.id, park_id: params[:park_id])
     like.destroy
     @likes = Like.where(park_id: params[:park_id])
     @park.reload
   end

   private

   def set_park
     @park = park.find(params[:park_id])
   end


end
