Rails.application.routes.draw do

  get '/auth/:palceholder/callback', to: 'sessions#omniauth'
  
# sessions
  root 'sessions#new', as: "login"
  post '/', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
# users
  resources :users do 
    resources :travels, only: [:new, :create ,:index]
  end
  
# rigs
  resources :rigs, only: [:new, :edit, :update, :destroy, :show]

# location
  resources :locations, only: [:new, :edit, :update, :destroy] do 
  end                                                                                                                                    

# travels
  resources :travels, except: [:new, :index] 


end
