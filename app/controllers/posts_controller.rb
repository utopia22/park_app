class PostsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
    @likes_count = Like.where(post_id: @post.id).count
    @comments = @post.comments
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)

    if post.save
      redirect_to posts_path
    else
      render('posts/new')
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post
  end

  def destroy
    post = Post.find(params[:id])
    post.delete

    redirect_to posts_path
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def hashtag
    @tag = Hashtag.find_by(hashname: params[:name])
    @posts = @tag.posts.build
    @post  = @tag.posts.page(params[:page])
  end

  private

  def post_params
    params.require(:post).permit(:image, :hashbody, :park, :outline, :location, :access)
  end
end
