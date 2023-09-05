Rails.application.routes.draw do
  root "index#index"
  get "about" => "index#about", as: "about"
  resources :tunes
  resources :notes
  resources :playlists
  resources :users do
    get "info", on: :member
  end

  resource :session, only: [:create, :destroy]
end