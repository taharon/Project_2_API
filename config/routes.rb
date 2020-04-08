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
  #get '/played_games/player' => 'played_games#played'
end
