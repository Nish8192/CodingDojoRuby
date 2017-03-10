Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "" => "dojos#index"
  get "/dojos/new" => "dojos#new"
  post "/dojos" => "dojos#create"
  get "/dojos/:id" => "dojos#show"
  get "/dojos/edit/:id" => "dojos#edit"
  put "/dojos/:id" => "dojos#update"
  delete "/dojos/:id" => "dojos#destroy"
end
