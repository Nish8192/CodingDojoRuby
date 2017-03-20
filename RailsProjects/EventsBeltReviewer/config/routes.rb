Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "sessions#new"

  post "/sessions/create" => "sessions#create"
  delete "/sessions/:id" => "sessions#destroy"

  get "/users/:id" => "users#show"
  post "/users/create" => "users#create"
  get "/users/:id/edit" => "users#edit"
  patch "/users/:id/edit" => "users#update"

  get "/events" => "events#index"
end
