class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    flash[:notice] = "「いいね！」、「レビュー」をするにはログインが必要です。" unless user_signed_in?
    @posts = Post.includes(:taggings, :tags, :likes, :comments).all.order(created_at: :desc).page(params[:page]).per(10)
    if params[:tag]
     @posts = Post.includes(:taggings, :tags, :likes, :comments).tagged_with("#{params[:tag]}").page(params[:page]).per(10)
    end

    @tags = ActsAsTaggableOn::Tag.all
  end

  def show
    @post = Post.find(params[:id])
    @likes_count = Like.where(post_id: @post.id).count
    @comments = @post.comments
    @comment = Comment.new
  end

  def new
    @post = Post.new
    @tags = ActsAsTaggableOn::Tag.all
  end

  def create
    post = Post.new(post_params)

    if post.save
      redirect_to posts_path
    else
      @tags = ActsAsTaggableOn::Tag.all
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

  def likes
    @post = Post.find_by(id: params[:id])
    @likes = Like.where(post_id: params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:image, :hashbody, :park, :outline, :location, :access, :tag_list)
  end
end
