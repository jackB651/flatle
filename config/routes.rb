
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  Rails.application.routes.draw do
  resources :results, only: [:index, :show, :create]
  resources :guesses, only: [:index, :show, :create, :update, :delete]
  resources :words, only: [:index, :show, :create]
  resources :users, only: [:index, :show, :create]
   
    post '/signup', to: "users#create"
    get '/me', to: "users#show"
    post '/login', to: "sessions#create"
    delete '/logout', to: "sessions#destroy"

     # route to test your configuration
    get '/hello', to: 'application#hello_world'
    get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
