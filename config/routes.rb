# config/routes.rb

Rails.application.routes.draw do
  root  'artists#index'
  root 'songs#index'

  resources :artists, only: [:index, :show, :destroy]
  resources :songs, only: [:create, :destroy]

end
