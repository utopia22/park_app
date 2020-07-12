Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "posts#index"
  devise_for :users
  resources :posts

  resources :users, only: :show

  devise_scope :user do
    get 'my_page' => 'users/registrations#my_page'
  end

  get 'likes/index'
  post '/likes', to:'likes#create'

  delete "likes/:post_id/destroy" => "likes#destroy"


end
