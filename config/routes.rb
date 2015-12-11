Rails.application.routes.draw do

  get 'group/index'

  get 'group/new'

  get 'group/create'

  root to: "welcome#index"

  resources :users
  
  resources :sessions
  delete '/logout' => 'sessions#destroy'

  resources :practices

  resources :groups
  
end
