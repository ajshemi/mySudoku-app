Rails.application.routes.draw do
  get 'games/random', to: 'games#random' #it works when placed on top,i.e right here
  resources :scores
  resources :games
  resources :gamers
  # get '/patients/:id', to: 'patients#show'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
