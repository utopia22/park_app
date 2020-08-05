class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
  end

  def destroy
     User.find_by(id: current_user.id).destroy
     redirect_to root_path, success: '退会しました'
  end 
end
