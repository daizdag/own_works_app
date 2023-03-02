Rails.application.routes.draw do
  devise_for :users
  root to: 'collections#index'
  resources :collections
  resources :profiles, only: [:show]
end
