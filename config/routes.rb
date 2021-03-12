Rails.application.routes.draw do

  get '/auth/:palceholder/callback', to: 'sessions#omniauth'
  
# sessions
  root 'sessions#new', as: "login"
  post '/', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
# users
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get 'users/:id/show', to: 'users#show', as: "profile"
  get '/users/:id/edit', to: 'users#edit', as: "user_edit"
  patch '/users/:id/edit', to: 'users#update'
  
# rigs
  resources :rigs, only: [:new, :edit, :update, :destroy]

# location
  resources :locations, only: [:new, :edit, :update, :destroy]

# travels
  resources :travels


end
