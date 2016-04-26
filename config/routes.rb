Rails.application.routes.draw do

  root 'home#index'

  get '/login', to: 'sessions#new'

  get '/signup', to: 'users#new'

  resources :users, only: [:new, :create]

  resources :links, only: [:index, :create]

  resources :sessions, only: [:create]

  namespace :api do
    namespace :v1, defaults: {format: :json} do
      resources :links, only: [:create, :index, :update]
    end
  end

end
