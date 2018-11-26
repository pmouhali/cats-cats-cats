Rails.application.routes.draw do
  devise_for :users
  root 'item#index'

  get '/item/index', to: 'item#index'
  get '/item/show/:id', to: 'item#show'

  resources :carts

end
