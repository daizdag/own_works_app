Rails.application.routes.draw do
  get 'relationships/followings'
  get 'relationships/followers'
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
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  resource :profile, only: [:show, :edit, :update]
  
end
