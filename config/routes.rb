Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root "posts#index"

  devise_for :users
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/', to: 'users#index'

  resources :posts do
    resources :comments, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
  end

  get "users/:id/likes" => "users#likes"
  get "posts/:id/likes" => "posts#likes"

  get '/post/hashtag/:name' => 'posts#hashtag'
  get '/post/hashtag' => 'posts#hashtag'

  get 'tags/:tag', to: 'posts#index', as: :tag

end
