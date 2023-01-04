Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/games', to: 'games#index'
  get '/games/:id', to: 'games#show'
  post '/games', to: 'games#create'

  get '/images', to: 'images#index'
  
  get '/hosts', to: 'hosts#index'
  get '/hosts/:id', to: 'hosts#show'
  post '/hosts', to: 'hosts#create'

  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  post '/users', to: 'users#create'

  get '/lobbies', to: 'lobbies#index'
  get '/lobbies/:id', to: 'lobbies#show'
  post '/lobbies', to: 'lobbies#create'

end
