Rails.application.routes.draw do
  devise_for :users
  root to: 'collections#index'
  resources :collections do
    resources :comments, only: [:create, :destroy]
  end
  resources :profiles, only: [:show]
end
