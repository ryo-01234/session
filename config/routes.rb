Rails.application.routes.draw do
  get 'passwords/edit'
  root "index#index"
  get "about" => "index#about", as: "about"
  resources :tunes
  resources :notes
  resources :playlists
  resources :users do
    get "info", on: :member
  end

  resource :password, only: [:show, :edit, :update]
  resource :session, only: [:create, :destroy]
end