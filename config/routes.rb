Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :resources, only: [:new, :create, :destroy] do
    resources :subscriptions, only: [:new, :create]
  end
  resources :subscriptions, only: [:index, :show, :edit, :update]
end
