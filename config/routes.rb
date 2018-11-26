Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'item#index'

  get '/item/index', to: 'item#index'
  get '/item/show/:id', to: 'item#show'
end
