Rails.application.routes.draw do
  get 'home/index'
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 
  # Defines the root path route ("/")
  root "users#sign_in"
  get "/home", to: "home#index"
end
