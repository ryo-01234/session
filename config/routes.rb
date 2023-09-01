Rails.application.routes.draw do
  root "index#index"
  get "about" => "index#about", as: "about"
  resources :tunes
  resources :notes
  resources :playlists
  resources :users

  resource :session, only: [:create, :destroy]
end