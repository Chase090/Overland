Rails.application.routes.draw do

  resources :posts
  resources :rigs
  get '/auth/:palceholder/callback', to: 'sessions#omniauth'

# sessions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
# users
  resources :users, except: :index, path_names: { new: '/signup', show: '/profile', edit: 'uedit'} 
# location
  resources :locations



end
