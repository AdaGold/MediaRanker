Rails.application.routes.draw do
  get 'upvotes/index'

  resources :works
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'upvotes#index'
end
