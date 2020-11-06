Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resource :secrets, only:[:show]
  get '/secret', to: 'secrets#show', as: 'secret'
  get '/', to: 'application#welcome', as: 'welcome'
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  delete '/sessions', to: 'sessions#destroy'

end
