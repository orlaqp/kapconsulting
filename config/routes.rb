Kapconsulting::Application.routes.draw do
  get "documentation/index"
  resources :documents

  resources :terms

  resources :time_clocks

  resources :interns

  resources :departments

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  get 'edit', to: 'profiles', as: 'profile'
  patch 'update', to: 'profiles', as: 'update_profile'

  get 'index', to: 'documentation', as: 'documentation'

end