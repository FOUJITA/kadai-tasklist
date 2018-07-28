Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  
  
  
  get 'users/index'
  resources :users, only: [:index, :show, :new, :create]
  get 'users/show'
  get 'users/new'
  get 'users/create'
  root to: 'tasks#index'

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


  resources :tasks
end