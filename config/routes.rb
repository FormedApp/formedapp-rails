Rails.application.routes.draw do
  resources :packs
  resources :activities
  root 'packs#index'
end

