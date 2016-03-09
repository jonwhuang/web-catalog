Rails.application.routes.draw do

  devise_for :users
  root 'products#home'

  get '/admin', to: 'admin/products#index'

  get '/facility' => 'pages#facilities'

  resources :categories

  resources :products

  namespace :admin do
    resources :products
  end
end
