Rails.application.routes.draw do
  resources :notices
  resources :events
  resources :venues
  resources :documents
  resources :document_types
  resources :members
  resources :positions
  resources :networks
  resources :companies
  resources :users
  resources :police_areas
  resources :phones
  resources :states
  resources :locations
  resources :cities
  resources :departments
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
