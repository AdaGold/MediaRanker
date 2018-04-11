Rails.application.routes.draw do
  get 'upvotes/index'

  post '/upvotes', to: 'upvotes#create', as: 'upvote'

  get '/login', to: 'user#new', as: 'login_form'

  post '/login', to: 'user#create', as: 'login'

  delete '/login', to: 'user#destroy', as: 'logout'

  resources :works
  resources :users, except: [:edit, :update, :new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'upvotes#index'
end
