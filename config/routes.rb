Rails.application.routes.draw do
  
  resources :players, only: [:show, :index]
  resources :tournaments, only: [:show, :index]

end
