Blocitoff::Application.routes.draw do
  devise_for :users
  resources :users, only: [:update]

  resources :todos, only: [:new, :create, :index]
  root to: "welcome#index"
end
