Rails.application.routes.draw do
  resources :finds

  resources :features

  root 'rounds#show'
  
  resources :hints

  resources :albums

  resources :finders

  resources :places

  resources :rounds
  
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  resources :users
  resources :sessions
  
  resources :charges
  
  get ":username" => "users#show", :as => "profile"
end
