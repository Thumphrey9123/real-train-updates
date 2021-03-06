Rails.application.routes.draw do
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create'
  get '/welcome', to: 'sessions#welcome', as: 'welcome'
  post '/logout', to: 'sessions#destroy', as: 'logout'

  resources :stations, :uls, :trains, :subways, only: [:show, :index]
  resources :updates
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
