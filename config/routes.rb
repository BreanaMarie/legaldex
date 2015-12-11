Rails.application.routes.draw do

  get 'sessions/index'

  root to: "welcome#index"

  resources :users
  
  resources :sessions
  delete '/logout' => 'sessions#destroy'
  
end
