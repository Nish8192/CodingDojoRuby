Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "sessions#new"
  post "/sessions/create" => "sessions#create"
  delete "/sessions/:id" => "sessions#destroy"

  get "/users" => "users#show"
  get "/users/professional_profile" => "users#professional_profile"
  post "/users/create" => "users#create"
end
