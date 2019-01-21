Rails.application.routes.draw do

  scope "(:locale)", locale: /en|pl/ do
	  resources :books
	  resources :individuals, only: [:index, :show]
	  resources :clubs, only: [:index, :show]
	  resources :individual_devices, only: [:index, :show]
	  resources :club_devices, only: [:index, :show]

	  get 'static_pages/home'
    root to: 'static_pages#home'
	end

end
