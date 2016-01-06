Rails.application.routes.draw do
  
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
  resources :usedexperts
  
end
