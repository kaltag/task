Rails.application.routes.draw do 
  resources :executors
  get 'home/index' 
  
  root 'home#index'
end