Rails.application.routes.draw do
  resources :restaurants, only: [:create, :index, :destroy]

  delete "restaurants/:id", to: "restaurants#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
