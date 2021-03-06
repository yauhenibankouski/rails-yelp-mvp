Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # #get restaurants form
  # get "restaurants/new", to: "restaurants#new"
  # #index all
  # get "/restaurants", to: "restaurants#index"
  # #show specific restaurant
  # get "restaurants/:id", to: "restaurants#show"
  # #post a new restaurant
  # post "restaurants", to: "restaurants#create"
  resources :restaurants do
    #QUESTION --> Why do we put these routes within restaurants routes?
    #QUESTION --> What is the point of Prefixes?
    resources :reviews, only: [ :new, :create ]
  end
end
