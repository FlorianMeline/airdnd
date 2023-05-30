Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "pages#home"

  resource :profile, only: [:show]

  resources :teams, only: [:index, :show] do
    resources :contracts, only: [:create]
  end
  resources :contracts, only: [:index]

  namespace :owner do
    resources :teams, only: [:index, :new, :create]
    resources :contracts, only: [:update, :index]
  end
end
