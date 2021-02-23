Rails.application.routes.draw do
  get '/auth/:palceholder/callback', to: 'sessions#omniauth'

  # root to: 'sessions#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  delete '/logout' => 'sessions#destroy'
  resources :users, only: [:new, :create, :show]
end