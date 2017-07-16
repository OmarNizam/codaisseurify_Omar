Rails.application.routes.draw do
      root "artists#index"


      resources :artists, only: [:index, :show, :destroy]do
      resources :songs, only: [:create, :destroy]
    end
    namespace :api do
      resources :artists, :songs
    end
end
