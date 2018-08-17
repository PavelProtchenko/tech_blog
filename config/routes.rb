Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  resources :posts
  resources :pictures, only: [:create, :destroy]
  resources :tags, only: [:show]
  resources :categories
  resources :users, only: [ :show, :edit ]
  get 'static_pages/home'
  get 'static_pages/contacts'
end
