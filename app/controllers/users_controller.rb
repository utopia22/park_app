class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def likes
    @user = User.find_by(id: params[:id])
    @likes = Like.where(user_id: params[:id])
  end

end
