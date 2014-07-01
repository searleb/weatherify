Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/weather_search' => 'pages#weather_search'
  get '/location_search' => 'pages#location_search'
  post '/location_search' => 'pages#location_search_result'

  get '/player' => 'pages#player'
  
  resources :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end

# Prefix Verb   URI Pattern                Controller#Action
#            root GET    /                          pages#home
#  weather_search GET    /weather_search(.:format)  pages#weather_search
# location_search GET    /location_search(.:format) pages#location_search
#                 POST   /location_search(.:format) pages#location_search_result
#          player GET    /player(.:format)          pages#player
#           users GET    /users(.:format)           users#index
#                 POST   /users(.:format)           users#create
#        new_user GET    /users/new(.:format)       users#new
#       edit_user GET    /users/:id/edit(.:format)  users#edit
#            user GET    /users/:id(.:format)       users#show
#                 PATCH  /users/:id(.:format)       users#update
#                 PUT    /users/:id(.:format)       users#update
#                 DELETE /users/:id(.:format)       users#destroy
#           login GET    /login(.:format)           session#new
#                 POST   /login(.:format)           session#create
#                 DELETE /login(.:format)           session#destroy