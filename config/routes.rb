Kapconsulting::Application.routes.draw do

  resources :time_sheet

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

  get "documentation/index"

  get "time_sheets/index"
  get "time_sheets/edit"
  get "time_sheets/add"
  get "time_sheets/update"
  get "time_sheets/delete"
  

end