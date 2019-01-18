Rails.application.routes.draw do
  resources :individuals, only: [:index, :show]
  resources :clubs, only: [:index, :show]
  resources :individual_devices, only: [:index, :show]
  resources :club_devices, only: [:index, :show]

  get 'visitors/index'

  root 'visitors#index'
end
