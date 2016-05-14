Rails.application.routes.draw do
  resources :posts
  devise_for :users
  resources :activities
  resources :tracks
  resources :activities
  resources :groups do |t|
    member do
      post :create_role
    end
  end
  root 'tracks#index'
end

