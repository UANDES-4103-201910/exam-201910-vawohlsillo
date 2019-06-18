Rails.application.routes.draw do
  get 'home/index'
  resources :order_products
  resources :orders
  resources :addresses
  resources :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
