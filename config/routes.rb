Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root "posts#index"

  devise_for :users
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  resources :users, only: :show

  devise_scope :user do
    get 'my_page' => 'users/registrations#my_page'
  end

  get 'likes/index'
  post '/likes', to:'likes#create'

  delete '/likes', to: 'likes#destroy'

  get '/post/hashtag/:name' => 'posts#hashtag'
  get '/post/hashtag' => 'posts#hashtag'

end
