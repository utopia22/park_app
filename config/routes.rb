Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "posts#index"
  devise_for :users
  resources :posts

  resources :users, only: :show

end
