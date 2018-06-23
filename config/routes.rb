Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  get 'static_pages/contacts'
end
