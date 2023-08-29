Rails.application.routes.draw do
  root "index#index"

  resources :tunes
  resources :notes
  resources :playlists
  resources :users

  resource :session, only: [:create, :destroy]
end