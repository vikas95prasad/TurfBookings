Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'turf_bookings#index'

  resources :turf_bookings
  
  resources :turf_details
  
  devise_for :users

end
