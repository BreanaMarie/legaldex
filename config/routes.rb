Rails.application.routes.draw do

  get 'assignments/new'

  get 'assignments/create'

  root to: "welcome#index"

  resources :users
  
  resources :sessions
  delete '/logout' => 'sessions#destroy'

  resources :practices
  resources :groups
  resources :experts
  resources :lawcases
  resources :handlings
  resources :companies
  resources :representations
  resources :firms
  resources :assignments
  
end
