Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "posts#index"
  resources :posts, only: [:index, :new, :create, :show, :edit, :update]

  devise_for :users, :controllers => {
   :registrations => 'users/registrations',
   :sessions => 'users/sessions',
   :passwords => 'users/passwords'
  }

  devise_scope :user do
    get 'my_page' => 'users/registrations#my_page'
  end

end
