Rails.application.routes.draw do


scope :api do
  resources :posts
  resources :lessons
  resources :teachers
  resources :locations
  resources :genres
  resources :users
  post "/register", to: "authentications#register"
  post "/login", to: "authentications#login"
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
