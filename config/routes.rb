Rails.application.routes.draw do
  get 'homes/index'
  get 'homes/booking'
  get 'homes/about_me'
  get 'homes/contact_us'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'turf_bookings#index'

  resources :turf_bookings
  
  resources :turf_details
  
  devise_for :users

end
