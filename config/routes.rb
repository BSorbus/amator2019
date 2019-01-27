Rails.application.routes.draw do

  scope "(:locale)", locale: /en|pl/ do
    resources :individuals, only: [:index, :show] do
      get 'export', on: :collection
    end

    resources :clubs, only: [:index, :show] do
      get 'export', on: :collection
    end

    resources :individual_devices, only: [:index, :show] do
      get 'export', on: :collection
    end

    resources :club_devices, only: [:index, :show] do
      get 'export', on: :collection
    end

    get 'datatables/lang'

	  get 'static_pages/home'
    root to: 'static_pages#home'
	end

end
