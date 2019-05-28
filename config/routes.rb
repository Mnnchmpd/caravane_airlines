Rails.application.routes.draw do
  get 'contacts/index'
  devise_for :users
  root to: 'products#index'
  get "dashboard", to: "pages#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :products, only: [:index, :edit, :update, :show, :new, :create] do
      resources :bookings, only: [:new, :create]
    end
    resources :products, only: [:destroy]
end
