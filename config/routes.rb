Rails.application.routes.draw do
  get 'login/index'
  get 'login/show'
  get 'login/index'
  resources :notices
  resources :networks
  resources :events
  resources :venues
  resources :documents
  resources :document_types
  resources :police_areas
  resources :members
  resources :system_users
  resources :roles
  resources :states
  resources :positions
  resources :companies
  resources :phones
  resources :locations
  resources :cities
  get 'home/index'

  root 'home#index'
  
  resources :departments
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
