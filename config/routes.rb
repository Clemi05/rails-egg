Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :hens do
    resources :bookings, only: %i[show new create]
  end
  resources :hens, only: :destroy

  get 'dashboard', to: 'pages#dashboard'

end
