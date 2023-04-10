Rails.application.routes.draw do
  resources :recipes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  # post "/recipes", to: "recipes#show"
  get "/me", to: "users#show"
  # get "/recipes", to: "recipes#index"
  delete "/logout", to: "sessions#destroy"
end
