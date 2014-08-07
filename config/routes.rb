Blocitoff::Application.routes.draw do
  devise_for :users
  resources :users, only: [:update]

  resources :todos, only: [:new, :create, :index, :destroy]
  
  post '/todos/:id/complete', to: 'todos#complete'

  root to: "welcome#index"
end
