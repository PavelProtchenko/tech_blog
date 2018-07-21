Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  resources :pictures, only: [:create, :destroy]
  resources :tags, only: [:show]
  get 'static_pages/home'
  get 'static_pages/contacts'
end
