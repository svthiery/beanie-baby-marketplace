Rails.application.routes.draw do
  # resources :trades
  resources :ownerships, only: [:new, :create, :destroy, :show]
  resources :babies
  resources :users, except: [:edit]
  get '/home', to: 'users#home', as: 'home'
  get '/login', to: 'users#login', as: 'login'
  post '/post_login', to: 'users#post_login'
  delete '/logout', to: 'users#logout', as: 'logout'
  get '/ownership/:id/trades/new', to: 'trades#new', as: 'noo_trade'
  post '/ownership/:id/trades/new', to: 'trades#create'
  get '/trades/:id', to: 'trades#show', as: 'trade'
  post '/trades/:id', to: 'trades#trade', as: 'confirm_trade'
  patch '/trades/:id/cancel', to: 'trades#cancel', as: 'cancel_trade'
  get '/trades/:id/cancel', to: 'trades#cancel', as: 'cancel_confirmed'
  get '/users/:id/edit', to: 'users#add_funds', as: 'add_funds'
  patch '/users/:id/edit', to: 'users#update', as: 'confirm_add_funds'
  get '/ownership/:id/purchase', to: 'ownerships#purchase', as: 'purchase'
  patch '/ownership/:id/update', to: 'ownerships#update', as: 'ex_purchase'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
