Kapconsulting::Application.routes.draw do
  resources :terms

  resources :time_clocks

  resources :interns

  resources :departments

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end