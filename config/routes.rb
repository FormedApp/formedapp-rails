Rails.application.routes.draw do
  resources :posts
  devise_for :users
  resources :activities
  resources :tracks
  resources :activities
  root 'tracks#index'
end

