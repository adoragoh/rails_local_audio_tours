Rails.application.routes.draw do
  get 'reviews/index'
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/tours/filter', to: 'tours#filter', as: 'filter_tours'

  resources :tours do
    resources :tracks
    resources :photos
    resources :favourites, only: [ :index, :create, :update ]
    resources :reviews, only: :create
  end

  resources :favourites, only: [ :index, :edit, :update, :destroy ]

  get '/profile', to: 'profiles#index'
  get '/tours/:tour_id/tracks/:id/goto', to: 'tracks#goto', as: 'track_goto'
  get '/tours/:tour_id/user', to: 'tours#user', as: 'tour_user'
  get '/my_tours', to: 'tours#my_tours', as: 'my_tour'

end
