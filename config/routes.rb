# config/routes.rb
Rails.application.routes.draw do
  devise_for :users, path: 'auth', controllers: { sessions: 'auth/sessions' }, defaults: { format: :json }
  match 'rentals_calc', to: 'rentals#calc', via: [:get, :post]
  resources :rent_values, only: [:index]
  resources :formats
  resources :slice_rates
  resources :days_slices
  resources :order_addons
  resources :orders
  resources :pay_types
  resources :users
  resources :clients
  resources :spots
  resources :driver_licenses
  resources :passports
  resources :settlements
  resources :districts
  resources :addresses
  resources :additions
  resources :vehicles
  resources :rental_plans
  resources :rental_prices
  resources :model_classes
  resources :range_rates
  resources :days_ranges
  resources :rental_rates
  resources :rental_types
  resources :rental_classes
  resources :manufactures
  resources :models
  resources :body_types
  resources :bodies
  resources :trunks
  resources :trunk_types
  resources :localities
  resources :statuses
  resources :cities
  resources :regions
  resources :states
  resources :countries
  resources :manufacturers
  resources :brands

  post '/requests', to: 'requests#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
