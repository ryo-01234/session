Rails.application.routes.draw do
  root "index#index"

  resources :tunes
  resources :notes
  resources :playlists
  resource :users


end
