Rails.application.routes.draw do
  resources :locations
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :teachers do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:destroy, :show]
  get "/dashboard", to: "dashboards#show", as: :dashboard

end
