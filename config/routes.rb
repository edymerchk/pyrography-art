PyrographyArt::Application.routes.draw do


  get "logout" => "sessions#destroy", as: "logout"
  get "login" => "sessions#new", as: "login"
  
  
  

  root to: 'static_pages#index'
  
  get "/about" => "static_pages#about", as: "about"
  get "/turetrato" => "static_pages#retrato", as: "retrato"

  
  resources :sessions
  resources :works


end
	




