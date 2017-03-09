Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/users" => "users#index"
  get "/users/new" => "users#new_user"
  get "/users/:id" => "users#show_user"
  get "/users/:id/edit" => "users#edit_user"
  post "/users" => "users#save_user"
  get "/users/total" => "users#users_total"
end
