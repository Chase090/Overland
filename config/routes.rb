Rails.application.routes.draw do
  get '/auth/:palceholder/callback', to: 'sessions#omniauth'

  # sessions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  # users
  # get '/signup' => 'users#new'
  # post '/signup' => 'users#create'
  # get '/profile/:id/edit' => 'users#edit', as: 'uedit'
  # patch '/edit/:id' => 'users#update'
  # get '/profile/:id' => 'users#show', as: 'profile'


resources :users, except: :index, path_names: { new: '/signup', show: '/profile', edit: 'uedit'} 
  
end
