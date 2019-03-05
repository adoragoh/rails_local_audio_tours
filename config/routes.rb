Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tours do
    resources :tracks
    resources :favourites, only: [ :index, :create, :update ]
  end

  resources :favourites, only: [ :index, :edit, :update, :destroy ]

  get '/profile', to: 'profiles#index'

end
