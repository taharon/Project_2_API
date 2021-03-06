# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :played_games, except: %i[new edit]
  resources :game_instances, except: %i[new edit]
  resources :examples, except: %i[new edit]
  resources :games, except: %i[new edit]
  #get '/played_games/:id' => 'played_games#show'
  #get '/played_games' => 'played_games#index'
  #post '/played_games' => 'played_games#create'
  #patch '/played_games' => 'played_games#update'
  #delete '/played_games' => 'played_games#destroy'

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  get '/users' => 'users#index'
  # To make a new custom route attached to a route
  #get '/played_games_played' => 'played_games#played'
  #post '/played_games_array_create' => 'played_games#create_with_array'  
end
