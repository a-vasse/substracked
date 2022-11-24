Rails.application.routes.draw do
  devise_for :users
  root to: "subscriptions#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :resources, only: [:destroy]
  resources :subscriptions
end
