Rails.application.routes.draw do

    get "" => "rpg#index"
    
  post 'rpg/farm' => "rpg#farm"

  post 'rpg/cave' => "rpg#cave"

  post 'rpg/casino' => "rpg#casino"

  post 'rpg/house' => "rpg#house"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
