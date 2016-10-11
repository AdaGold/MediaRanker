Rails.application.routes.draw do

  root to: 'homes#index'

  get 'albums/index' => 'albums#index'

  get 'albums/:id/show' => 'albums#show', as: 'albums_show'

  patch 'albums/upvote/:id' => 'albums#upvote'

  get 'albums/edit/:id' => 'albums#edit', as: 'albums_edit'

  get 'albums/update'

  get 'albums/new'

  get 'albums/create'

  delete 'albums/delete' => 'albums#destroy'

  get 'books/index' => 'books#index'

  get 'books/:id/show' => 'books#show', as: 'books_show'

  get 'books/edit/:id' => 'books#edit', as: 'books_edit'

  patch 'books/upvote/:id' => 'books#upvote'

  get 'books/update'

  get 'books/new'

  get 'books/create'

  delete 'books/delete' => 'books#destroy'

  get 'movies/index' => 'movies#index'

  get 'movies/:id/show' => 'movies#show', as: 'movies_show'

  get 'movies/edit/:id' => 'movies#edit', as: 'movies_edit'

  patch 'movies/upvote/:id' => 'movies#upvote'

  get 'movies/update'

  get 'movies/new'

  get 'movies/create'

  delete 'movies/delete' => 'movies#destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
