Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    root 'devise/sessions#new'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :resources, only: [:new, :create, :destroy]
  resources :subscriptions

  # API
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :resources, only: [ :index ]
      resources :plans, only: [ :index ]
    end
  end
end
