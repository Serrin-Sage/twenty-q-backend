Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/categories', to: 'categories#index'
  get '/categories/:id', to: 'categories#show'

  get '/hosts', to: 'hosts#index'
  post '/hosts', to: 'hosts#create'


  get '/images', to: 'images#index'
end
