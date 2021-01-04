Rails.application.routes.draw do
  resources :trades
  resources :ownerships, only: [:new, :create, :destroy]
  resources :babies
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
