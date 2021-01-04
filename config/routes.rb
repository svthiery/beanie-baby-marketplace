Rails.application.routes.draw do
  resources :trades
  resources :ownerships, only: [:new, :create, :destroy]
  resources :babies
  resources :users

  get '/login', to: "users#login", as: "login"
  post '/send_form_here', to: "users#handle_login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
