Rails.application.routes.draw do
 
  get 'signup', to: 'users#new'

  get 'login',     to: 'sessions#new'
  post 'login',    to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root to: 'tasks#index'

  resources :tasks
  resources :users, only: [:create]
end
