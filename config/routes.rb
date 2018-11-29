Rails.application.routes.draw do

  get 'profil/show'

# '/'
  root 'item#index'
# routes auto générées par Devise
  devise_for :users, controllers: { registrations: 'users/registrations' }
# routes pour controller ORDER
  post '/order/create', to: 'order#create'
  get '/order/show/:id', to: 'order#show'
  delete '/order/destroy'
# route pour controller ADMIN
  get '/admin/dashboard', to: 'admin#dashboard'
# routes pour controller ITEM
  get '/item/index', to: 'item#index'
  get '/item/new', to: 'item#new'
  post '/item/create', to: 'item#create'
  get '/item/edit/:id', to: 'item#edit'
  patch '/item/update', to: 'item#update'
  delete '/item/delete/:id', to: 'item#destroy'

  get '/item/show/:id', to: 'item#show'


# Controller ITEM mais lié au model CART
  post '/item/add/:id', to: "item#add_to_cart"
  get '/cart/:id', to: "item#cart_show"


  # ----- Cart section -----

  resources :carts
  # delete one item
  delete '/cart/:id/item/:id', to: 'carts#destroy'
  # delete all
  delete '/cart/:id/item', to: 'carts#destroy_all'

  # ----- User section -----

  get '/user/:id/', to: "profil#show"

# Stripe
  resources :charges
end
