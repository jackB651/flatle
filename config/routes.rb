Rails.application.routes.draw do
  resources :results
  resources :guesses
  resources :words
  resources :restults
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  Rails.application.routes.draw do
  resources :results
  resources :guesses
  resources :words
  resources :restults
  resources :users
    # route to test your configuration
    get '/hello', to: 'application#hello_world'
    get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
  end
end
