Rails.application.routes.draw do
  
  root to: 'welcome#index'

  # resources :movies, :books, :albums

  # index routes
  # # this will be the page where the top ten lives
  get 'index/index'

  get 'index/show' => 'index#show', as: 'index_show'

  get 'index/new'

  post 'index/create'

  get 'index/edit'

  put 'index/update'

  delete 'index/destroy'

  # movies routes

  get 'movies/index' => 'movies#index', as: 'movies_index'

  # show a movie
  get 'movies/:id/show' => 'movie#show', as: 'movies_show'

  get 'movies/new' => 'movies#new', as: 'movies_new'

  post 'movies/create' => 'movies#create', as: 'movies_create'

  get 'movies/:id/edit' => 'movies#edit', as: 'movies_edit'

  put 'movies/:id/update' => 'movies#update', as: 'movies_update'

  delete 'movies/:id/destroy' => 'movies#destroy', as: 'movies_destroy'

  # books routes
  get 'books/index' => 'books#index', as: 'books_index'

  get 'books/show' => 'books#show', as: 'books_show'

  get 'books/new' => 'books#new', as: 'books_new'

  post 'books/create' => 'books#create', as: 'books_create'

  get 'books/:id/edit' => 'books#edit', as: 'books_edit'

  put 'books/:id/update' => 'books#update', as: 'books_update'

  delete 'books/destroy' => 'books#destroy', as: 'books_destroy'

  # album routes
  get 'album/index' => 'album#index', as: 'album_index'

  get 'album/show' => 'album#show', as: 'album_show'

  get 'album/new' => 'album#new', as: 'album_new'

  post 'album/create' => 'album#create', as: 'album_create'

  get 'album/:id/edit' => 'album#edit', as: 'album_edit'

  put 'album/:id/update' => 'album#update', as: 'album_update'

  delete 'album/:id/destroy' => 'album#destroy', as: 'album_destroy'

end


  