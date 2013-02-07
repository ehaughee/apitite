APItite::Application.routes.draw do
  root to: "home#index"

  get "logout" => "sessions#destroy", as: "logout"
  get "login"  => "sessions#new", as: "login"
  post "sessions" => "sessions#create"

  get "account" => "users#show"
  get "signup" => "users#new", as: "signup"

  resources :apis
  resources :users
end

#== Route Map
# Generated on 06 Feb 2013 13:50
#
#    logout GET    /logout(.:format)         sessions#destroy
#     login GET    /login(.:format)          sessions#new

#   account GET    /account(.:format)        users#show
#    signup GET    /signup(.:format)         users#new

#      apis GET    /apis(.:format)           apis#index
#           POST   /apis(.:format)           apis#create
#   new_api GET    /apis/new(.:format)       apis#new
#  edit_api GET    /apis/:id/edit(.:format)  apis#edit
#       api GET    /apis/:id(.:format)       apis#show
#           PUT    /apis/:id(.:format)       apis#update
#           DELETE /apis/:id(.:format)       apis#destroy

#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
