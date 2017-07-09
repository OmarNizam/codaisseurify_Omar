Rails.application.routes.draw do
  root "artists#index"
  root "songs#index"

  resources :artists, only: [:index, :show, :destroy] do
    resources :songs, only: [:create, :destroy]
  end
end
