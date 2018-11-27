Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'item#index'

  get '/admin/dashboard', to: 'admin#dashboard'

  get '/item/index', to: 'item#index'
  get '/item/new', to: 'item#new'
  post '/item/create', to: 'item#create'
  get '/item/edit/:id', to: 'item#edit'
  patch '/item/update', to: 'item#update'

  delete '/item/delete/:id', to: 'item#destroy'
  
  get '/item/show/:id', to: 'item#show'
  post '/item/add/:id', to: "item#add_to_cart"

  get '/cart/:id', to: "item#cart_show"

  # Cart section

  resources :carts
  
  delete '/cart/:id/item/:id', to: 'carts#destroy'


end
