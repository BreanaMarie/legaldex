Rails.application.routes.draw do


  root to: "welcome#index"

  resources :users
  
  resources :sessions
  delete '/logout' => 'sessions#destroy'

  resources :practices
  resources :groups
  resources :experts
  resources :cases
  resources :handlings
  
end
