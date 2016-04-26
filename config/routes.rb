Rails.application.routes.draw do

  root 'home#index'

  get '/login', to: 'sessions#new'

  get '/signup', to: 'users#new'

  resources :users, only: [:new, :create]

  get '/links/:id/edit', to: 'links#edit'

  resources :links, only: [:index, :create, :update]

  resources :sessions, only: [:create]

  namespace :api do
    namespace :v1, defaults: {format: :json} do
      resources :links, only: [:create, :index]
    end
  end

end
