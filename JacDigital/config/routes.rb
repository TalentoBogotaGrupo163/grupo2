Rails.application.routes.draw do
  resources :notices
  resources :networks
  resources :events
  resources :phones
  resources :venues
  resources :documents
  resources :document_types
  resources :users
  resources :roles
  resources :police_areas
  resources :members
  resources :states
  resources :positions
  resources :companies
  resources :locations
  resources :cities
  resources :departments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
