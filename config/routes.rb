Rails.application.routes.draw do
  get 'passwords/edit'
  root "index#index"
  get "about" => "index#about", as: "about"
  get "irish" => "index#irish", as: "irish"
  get "how_to" => "index#how_to", as: "how_to"
  get "login" => "index#login", as: "login"
  resources :tunes
  resources :notes
  resources :playlists
  resources :users do
    get "info", on: :member
  end
  resource :password, only: [:show, :edit, :update]
  resource :session, only: [:create, :destroy]
  resource :msession, only: [:new, :create]
end