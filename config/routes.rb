Rails.application.routes.draw do
  devise_for :users
  root to: 'collections#index'
  resources :collections do
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: :show do
    resources :donations, only: [:new, :create]
  end
  resource :profile, only: [:show, :edit, :update]
  
end
