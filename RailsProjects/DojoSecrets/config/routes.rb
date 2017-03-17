Rails.application.routes.draw do
  post '/sessions/create' => "sessions#create"
  delete "/sessions/:id" => "sessions#destroy"

  get "/" => "users#index"
  get "/users/:id" => "users#show"
  post "/users/new" => "users#create"

  get "/secrets" => "secrets#show"
  post "/secrets/create" => "secrets#create"
  delete "/secrets/:id" => "secrets#destroy"

  post "secrets/:id/like" => "likes#create"
  delete "secrets/:id/like" => "likes#destroy"
  # post "users/"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
