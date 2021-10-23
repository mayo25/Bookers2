Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  # devise_for :users
  resources :books, only: [:new, :create, :index, :show, :destroy]do
  resources :users, only: [:show, :edit, :update]
 end 
 resources :homes, only: [:show]
end
