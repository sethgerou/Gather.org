Rails.application.routes.draw do

root 'landing#index'

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'

get '/signup' => 'users#new'
post '/users' => 'users#create'

get "age", to: "topics#age"
get "agefilter", to: "topics#agefilter"

  resources :topics do
    resources :articles
    resources :stories
    resources :resources do
      resources :reviews, shallow: true
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
