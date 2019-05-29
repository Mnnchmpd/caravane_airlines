Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  get "dashboard", to: "pages#dashboard"
  get "home", to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :products, only: [:index, :edit, :update, :show, :new, :create, :destroy] do
      resources :bookings, only: [:new, :create, :show, :index]
    end
    #resources :products, only: [:destroy]
    resources :bookings, only: [:destroy, :edit, :update]
end
