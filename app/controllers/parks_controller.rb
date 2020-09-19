class ParksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    flash[:notice] = "「いいね！」、「レビュー」をするにはログインが必要です。" unless user_signed_in?
    @parks = Park.includes(:taggings, :tags, :likes, :comments).all.order(created_at: :desc).page(params[:page]).per(10)
    if params[:tag]
     @parks = Park.includes(:taggings, :tags, :likes, :comments).tagged_with("#{params[:tag]}").page(params[:page]).per(10)
    end

    @tags = ActsAsTaggableOn::Tag.all
  end

  def show
    @park = Park.find(params[:id])
    @likes_count = Like.where(park_id: @park.id).count
    @comments = @park.comments
    @comment = Comment.new
  end

  def new
    @park = Park.new
    @tags = ActsAsTaggableOn::Tag.all
  end

  def create
    park = Park.new(park_params)

    if park.save
      redirect_to parks_path
    else
      @tags = ActsAsTaggableOn::Tag.all
      render('parks/new')
    end
  end

  def edit
    @park = Park.find(params[:id])
  end

  def update
    park = Park.find(params[:id])
    park.update(park_params)
    redirect_to park
  end

  def destroy
    park = Park.find(params[:id])
    park.delete

    redirect_to parks_path
  end

  def likes
    @park = Park.find_by(id: params[:id])
    @likes = Like.where(park_id: params[:id])
  end

  private

  def park_params
    params.require(:park).permit(:image, :hashbody, :park_name, :outline, :location, :access, :tag_list)
  end
end
