Rails.application.routes.draw do
  
  resources :players, only: [:show, :index]
  resources :tournaments, only: [:show, :index]

  # Player routes
  get '/players/:id/matches', to: 'players#all_matches'

  # Tournament routes
  get '/tournaments/:id/players', to: 'tournaments#players'
  get '/tournaments/:id/matches', to: 'tournaments#matches'
end
