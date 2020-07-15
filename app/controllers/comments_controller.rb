class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      respond_to :js
    else
      flash[:alert] = "コメントに失敗しました"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :post_id, :user_id)
  end
end
