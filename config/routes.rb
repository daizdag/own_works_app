Rails.application.routes.draw do
  devise_for :users
  root to: 'collections#index'
  resources :collections do
    resources :comments, only: [:create, :destroy]
    resource :favorites, only: [:show, :create, :destroy]
  end
  resources :users, only: :show do
    resources :donations, only: [:new, :create, :show]
    resource :relationships, only: [:show, :create, :destroy]
    get :favorites, on: :collection
  end
  resource :profile, only: [:show, :edit, :update]
  
end
