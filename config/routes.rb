Rails.application.routes.draw do
	# root :to => 'pages#hamldemo'
  root :to => 'pages#home'

  # get '/' => 'pages#home'
  
  get '/weather_search' => 'pages#weather_search'
  # post '/weather_search'
  
  get '/location_search' => 'pages#location_search'
  post '/location_search' => 'pages#location_search_result'

  get '/player' => 'pages#player'
  
  resources :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end