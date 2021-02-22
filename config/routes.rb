Rails.application.routes.draw do
  get '/auth/:palceholder/callback', to: 'sessions#omniauth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'sessions#new'
end
