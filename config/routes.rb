Rails.application.routes.draw do
  
  root 'welcome#index'

  resources :movies, :books, :albums

  # index routes
  get 'index/index'

  get 'index/show'

  get 'index/new'

  get 'index/create'

  get 'index/edit'

  get 'index/update'

  get 'index/destroy'

  # movies routes

  get 'movies/index' => 'movies#show', as: 'movies_show'

  get 'movies/:id/show' => 'movies#show', as: 'movies_show'

  get 'movies/show'

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

  # get 'vendors/index' => 'vendors#index', as: 'vendor_index'

  # get 'vendors/show/:id' => 'vendors#show', as: 'vendor_show'

  # get 'vendors/new'

  # get 'vendors/:id/edit' => 'vendors#edit', as: 'vendor_edit'

  # get 'vendors/create'

  # put 'vendors/:id/update' => 'vendors#update', as: 'vendor_update'

  # delete 'vendors/:id/destroy' => 'vendors#destroy', as: 'vendor_delete'

  # get 'markets/index' => 'markets#index', as: 'market_index'

  # get 'markets/show/:id' => 'markets#show', as: 'market_show'

  # get 'markets/new' => 'markets#new', as: 'market_new'

  # post 'markets/create' => 'markets#create', as: 'market_create'

  # get 'markets/:id/edit' => 'markets#edit', as: 'market_edit'

  # put 'markets/:id/update' => 'markets#update', as: 'market_update'

  # delete 'markets/:id/destroy' => 'markets#destroy', as: 'market_delete'



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


  