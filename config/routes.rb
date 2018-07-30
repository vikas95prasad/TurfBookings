Rails.application.routes.draw do
  resources :turf_bookings
  resources :turf_details
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
