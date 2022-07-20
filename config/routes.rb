Rails.application.routes.draw do
  # get 'houses/index'
  # get 'houses/show'
  # get 'houses/new'
  # get 'houses/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:index, :update]

  resources :houses, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create]
  end

  resources :houses, only: :destroy
  resources :bookings, only: :destroy

  namespace :lender do
    resources :bookings, only: [:index]
  end
end
