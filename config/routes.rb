Rails.application.routes.draw do
  
  root :to => 'session#new'

  get '/weather_search' => 'pages#weather_search'
  get '/location_search' => 'pages#location_search'
  post '/location_search' => 'pages#location_search_result'

  get '/player' => 'pages#player'
  
  resources :users
  resources :history
  resources :tracks_history

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end

#               Prefix Verb   URI Pattern                        Controller#Action
#                 root GET    /                                  pages#home
#       weather_search GET    /weather_search(.:format)          pages#weather_search
#      location_search GET    /location_search(.:format)         pages#location_search
#                      POST   /location_search(.:format)         pages#location_search_result
#               player GET    /player(.:format)                  pages#player
#                users GET    /users(.:format)                   users#index
#                      POST   /users(.:format)                   users#create
#             new_user GET    /users/new(.:format)               users#new
#            edit_user GET    /users/:id/edit(.:format)          users#edit
#                 user GET    /users/:id(.:format)               users#show
#                      PATCH  /users/:id(.:format)               users#update
#                      PUT    /users/:id(.:format)               users#update
#                      DELETE /users/:id(.:format)               users#destroy
#        history_index GET    /history(.:format)                 history#index
#                      POST   /history(.:format)                 history#create
#          new_history GET    /history/new(.:format)             history#new
#         edit_history GET    /history/:id/edit(.:format)        history#edit
#              history GET    /history/:id(.:format)             history#show
#                      PATCH  /history/:id(.:format)             history#update
#                      PUT    /history/:id(.:format)             history#update
#                      DELETE /history/:id(.:format)             history#destroy
# tracks_history_index GET    /tracks_history(.:format)          tracks_history#index
#                      POST   /tracks_history(.:format)          tracks_history#create
#   new_tracks_history GET    /tracks_history/new(.:format)      tracks_history#new
#  edit_tracks_history GET    /tracks_history/:id/edit(.:format) tracks_history#edit
#       tracks_history GET    /tracks_history/:id(.:format)      tracks_history#show
#                      PATCH  /tracks_history/:id(.:format)      tracks_history#update
#                      PUT    /tracks_history/:id(.:format)      tracks_history#update
#                      DELETE /tracks_history/:id(.:format)      tracks_history#destroy
#                login GET    /login(.:format)                   session#new
#                      POST   /login(.:format)                   session#create
#                      DELETE /login(.:format)                   session#destroy