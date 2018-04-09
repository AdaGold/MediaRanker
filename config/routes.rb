Rails.application.routes.draw do
  get 'upvotes/index'

  get 'upvotes/show'

  get 'upvotes/new'

  get 'upvotes/create'

  get 'upvotes/edit'

  get 'upvotes/update'

  get 'upvotes/destroy'

  get 'works/index'

  get 'works/show'

  get 'works/new'

  get 'works/create'

  get 'works/edit'

  get 'works/update'

  get 'works/destroy'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :works
  # resources :users
  # resources :upvotes

  root 'works#index'
end
