Rails.application.routes.draw do
  
  root 'welcome#index'

  resources :movies, :books, :albums

  # index routes
  # this will be the page where the top ten lives
  get 'index/index'

  get 'index/show'

  get 'index/new'

  get 'index/create'

  get 'index/edit'

  get 'index/update'

  get 'index/destroy'

  # movies routes

  get 'movies/index' => 'movies#show', as: 'movies_show'

  # show a movie
  get 'movie/:id/show' => 'movie#show', as: 'movie_show'

  get 'movies/new'

  get 'movies/create'

  get 'movies/edit'

  get 'movies/update'

  get 'movies/destroy'

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


  