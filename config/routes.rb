Rails.application.routes.draw do

  root 'home#index'

  get '/login', to: 'sessions#new'

  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'

  resources :users, only: [:new, :create]

  get '/links/:id/edit', to: 'links#edit'
  put '/links_index', to: 'links#index'

  resources :links, only: [:index, :create, :update]

  resources :sessions, only: [:create]

  namespace :api do
    namespace :v1, defaults: {format: :json} do
      resources :links, only: [:create, :index, :update]
    end
  end

end
