PyrographyArt::Application.routes.draw do


  get "logout" => "sessions#destroy", as: "logout"
  get "login" => "sessions#new", as: "login"
  get "signup" => "users#new", as: "signup"
  resources :users
  resources :sessions

  root to: 'static_pages#index'
  
  get "/about" => "static_pages#about", as: "about"

  get "static_pages/contact"

  resources :works


end
	




