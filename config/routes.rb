Rails.application.routes.draw do
  get '/item/index', to: 'item#index'
  get '/item/show/:id', to: 'item#show'
end
