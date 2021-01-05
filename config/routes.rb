Rails.application.routes.draw do
  resources :trades, except: [:new]
  resources :ownerships, only: [:new, :create, :destroy]
  resources :babies
  resources :users

  get '/login', to: 'users#login', as: 'login'
  post '/post_login', to: 'users#post_login'
  delete '/logout', to: 'users#logout', as: 'logout'
  get '/babies/:baby_id/trades/new', to: 'trades#new', as: 'new_trade'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
