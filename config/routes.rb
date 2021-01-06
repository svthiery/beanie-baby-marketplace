Rails.application.routes.draw do
  resources :trades
  resources :ownerships, only: [:new, :create, :destroy, :show]
  resources :babies
  resources :users
  get '/home', to: 'users#home', as: 'home'
  get '/login', to: 'users#login', as: 'login'
  post '/post_login', to: 'users#post_login'
  delete '/logout', to: 'users#logout', as: 'logout'
  get '/ownership/:id/trades/new', to: 'trades#new', as: 'noo_trade'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
