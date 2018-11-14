Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :users
  resources :comments
  resources :totals
  resources :buys
  resources :carts
  resources :credits
  resources :reads
  resources :sectors
  resources :chapters
  resources :comments
  resources :totals
  resources :buys
  resources :carts
  resources :credits
  resources :reads

  get 'homes/top'

  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
