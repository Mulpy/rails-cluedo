Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :suspects, only: %i[index show new create destroy] # do
   # resources :guesses, only: %i[new create]
  # end
  resources :guesses, only: %i[destroy new create]
end
