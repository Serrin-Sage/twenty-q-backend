Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/games', to: 'games#index'
  post '/games', to: 'games#create'

  get '/images', to: 'images#index'
  
  get '/hosts', to: 'hosts#index'
  post '/hosts', to: 'hosts#create'

  get '/users', to: 'users#index'
  post '/users', to: 'users#create'

  get '/lobbies', to: 'lobbies#index'
  post '/lobbies', to: 'lobbies#create'

end
