Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/login', to: 'sessions#login'

  get '/testing/:id', to: 'sessions#testing'
  get '/users/:id', to: 'sessions#show'

end
