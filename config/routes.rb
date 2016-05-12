Rails.application.routes.draw do
  resources :packs
  root 'packs#index'
end

