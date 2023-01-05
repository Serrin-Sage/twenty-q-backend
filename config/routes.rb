Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
  get '/images', to: 'images#index'
  get '/messages', to: 'messages#index'
  post '/messages', to: 'messages#create'
end
