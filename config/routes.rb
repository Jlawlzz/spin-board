Rails.application.routes.draw do

  root 'home#index'

  get '/login', to: 'sessions#new'

  get '/signup', to: 'users#new'

  resources :users, only: [:new, :create]

  resources :links, only: [:index]

  resources :sessions, only: [:create]
end
