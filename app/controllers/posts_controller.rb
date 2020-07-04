class PostsController < ApplicationController
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

      private

      def post_params
          params.require(:post).permit(:image, :park, :outline, :location, :access)
      end
end
