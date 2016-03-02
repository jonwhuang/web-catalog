Rails.application.routes.draw do

  devise_for :users
  root 'products#home'

  get '/admin', to: 'admin/products#index'

  get '/cart', to: 'orders#cart'

  resources :categories

  resources :products do
    resources :order_details, shallow: true
  end

  namespace :admin do
    resources :products
  end

 resources :orders, only: [:update, :show]

  resources :users do
    resources :orders, only: [:index]
  end
end
