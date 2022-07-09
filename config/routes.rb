Rails.application.routes.draw do 
  resources :orders
  resources :category_services
  resources :services
  resources :executors
  get 'home/index' 
  
  root 'home#index'
end