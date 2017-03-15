Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "users#index"
  post "/" => "users#create"

  get "/user/:id/messages" => "messages#index"
  post "/user/:id/messages" => "messages#create"
end
