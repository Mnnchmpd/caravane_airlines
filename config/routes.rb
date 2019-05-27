Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :products, only: [:index, :show, :new, :create] do
      resources :bookings, only: [:new, :create]
    end
    resources :products, only: [:destroy]
end
