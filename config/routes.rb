Rails.application.routes.draw do

  resources :travels
  get '/auth/:palceholder/callback', to: 'sessions#omniauth'
  
# sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
# users
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  root 'users#show', as: "profile"
  get '/users/:id/edit', to: 'users#edit', as: "user_edit"
  patch '/users/:id/edit', to: 'users#update'
  
# rigs
  resources :rigs

# location
  resources :locations



end
