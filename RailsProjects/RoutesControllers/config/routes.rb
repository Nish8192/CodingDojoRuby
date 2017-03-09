Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/hello" => "hellos#hello"
  get "/say/hello" => "hellos#say_hello"
  get "/say/hello/joe" => "hellos#say_hello_joe"
  get "/say/hello/michael" => "hellos#say_hello_michael"
  get "" => "hellos#index"
  get "/times" => "hellos#times"
  get "/times/restart" => "hellos#times_restart"
end
