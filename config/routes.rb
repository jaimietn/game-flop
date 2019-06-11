Rails.application.routes.draw do
  # resources :consoles
  # resources :games

  get '/consoles', to: "consoles#index"
  get '/consoles/:id', to: "consoles#show", as: "console"

  get '/games', to: "games#index", as: "games"
  get '/games/new', to: "games#new"
  get '/games/:id/edit', to: "games#edit"
  patch '/games/:id', to: "games#update"
  post '/games', to: "games#create"
  get '/games/:id', to: "games#show", as: "game"
  delete '/games/:id', to: "games#destroy"

end

  # get 'games/index'
  # get 'games/show'
  # get 'games/new'
  # post 'games/create'
  # delete 'games/destroy'
  # get 'games/edit'
  # patch 'games/update'
  #

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
