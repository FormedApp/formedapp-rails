Rails.application.routes.draw do
  devise_for :users
  resources :activities
  resources :packs
  resources :activities
  root 'packs#index'
end

