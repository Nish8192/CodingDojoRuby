Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "dojos#index"
  get "/dojos/new" => "dojos#new"
  post "/dojos" => "dojos#create"
  get "/dojos/:id" => "dojos#show"
  get "/dojos/edit/:id" => "dojos#edit"
  put "/dojos/:id" => "dojos#update"
  delete "/dojos/:id" => "dojos#destroy"

  get "/dojos/:id/students/new" => "students#new"
  post "/dojos/students" => "students#create"
  get "/dojos/students/:id" => "students#show"
  get "/dojos/students/:id/edit" => "students#edit"
  put "dojos/:dojo_id/students/:id" => "students#update"
  delete "/dojos/:dojo_id/students/:id" => "students#destroy"
end
