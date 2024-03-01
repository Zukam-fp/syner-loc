Rails.application.routes.draw do
  # get 'stuffs/index'
  # get 'stuffs/show'
  # get 'stuffs/new'
  # get 'stuffs/create'
  # get 'stuffs/destroy'
  devise_for :users
  root to: "stuffs#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    resources :stuffs, except: :index do
      resources :bookings, only: [:new, :create]
    end

  resources :bookings, only: [:edit, :update] do
    member do
      patch :confirm
      patch :decline
    end
  end

    get 'profiles', to: 'profiles#show'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
