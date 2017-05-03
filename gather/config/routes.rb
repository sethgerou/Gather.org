Rails.application.routes.draw do

root 'topics#index'
get "age", to: "topics#age"
get "one", to: "topics#one"
get "two", to: "topics#two"
get "three", to: "topics#three"
get "four", to: "topics#four"
get "five", to: "topics#five"
get "six", to: "topics#six"

  resources :topics do
    resources :articles
    resources :stories
    resources :resources
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
