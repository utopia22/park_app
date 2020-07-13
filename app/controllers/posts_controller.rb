class PostsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)

    redirect_to :action => :index
   end

   def show
     @post = Post.find(params[:id])
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


    private

    def post_params
      params.require(:post).permit(:image, :park, :outline, :location, :access)
    end
end
