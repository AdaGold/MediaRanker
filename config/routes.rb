Rails.application.routes.draw do
  
  root to: 'welcome#index'

  # resources :movies, :books, :albums

  # index routes
  # # this will be the page where the top ten lives
  get 'index/index'

  get 'index/show'

  get 'index/new'

  get 'index/create'

  get 'index/edit'

  get 'index/update'

  get 'index/destroy'

  # movies routes

  get 'movies/index' => 'movies#index', as: 'movies_index'

  # show a movie
  get 'movies/show/:id' => 'movie#show', as: 'movie_show'

  get 'movies/new'

  post 'movies/create' => 'movies#create', as: 'movies_create'

  get 'movies/:id/edit' => 'movies#edit', as: 'movies_edit'

  put 'movies/:id/update' => 'movies#update', as: 'movies_update'

  get 'movies/destroy' => 'movies#destroy', as: 'movies_destroy'

  # books routes
  get 'books/index'

  get 'books/show'

  get 'books/new'

  get 'books/create'

  get 'books/edit'

  get 'books/update'

  get 'books/destroy'

  # album routes
  get 'album/index'

  get 'album/show'

  get 'album/new'

  get 'album/create'

  get 'album/edit'

  get 'album/update'

  get 'album/destroy'

end


  