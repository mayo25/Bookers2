Rails.application.routes.draw do
  # root to: 'homes#top'
  # resources :books
    # get 'top' => 'homes#top'
  # # resources :blogs
  # devise_for :users
  # resources :post_images, only: [:new, :create, :index, :show, :destroy]
  root 'homes#top'
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
end
