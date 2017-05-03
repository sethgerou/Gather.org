Rails.application.routes.draw do

root 'topics#index'

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'

get '/signup' => 'users#new'
post '/users' => 'users#create'

  resources :topics do
    resources :articles
    resources :stories
    resources :resources
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
