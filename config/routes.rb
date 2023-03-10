Rails.application.routes.draw do
  devise_for :agents
  resources :properties
  resources :viewings
  resources :users
  resources :agents

  root to: 'agents#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
