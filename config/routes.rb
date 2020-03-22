Rails.application.routes.draw do
  resources :players, only: %i[show index]
  resources :tournaments, only: %i[show index]
  resources :matches, only: %i[show index]

  # Player routes
  get '/players/:id/matches', to: 'players#matches'
  get '/players/:id/tournaments', to: 'players#tournaments'

  # Tournament routes
  get '/tournaments/:id/players', to: 'tournaments#players'
  get '/tournaments/:id/matches', to: 'tournaments#matches'
end
