Rails.application.routes.draw do
  resources :posts
  devise_for :users
  resources :activities
  resources :tracks
  resources :activities
  resources :groups
  root 'tracks#index'
end

