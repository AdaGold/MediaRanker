Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "homepages#index"
  get "/homepages", to: "homepages#index"
  resources :users
  
  resources :works do
    resources :votes
  end

  # resources :users
  # #   resources :votes
  # # end

  # get "/votes/:work_id/upvote", to: "votes#upvote", as: "upvote"
  # post "/upvote", to: "users#upvote"

#login routes
  get "/login", to: "users#login_form", as: "login"
  post "/login", to: "users#login"
  post "/logout", to: "users#logout", as: "logout"
  get "/users/current", to: "users#current", as: "current_user"

end
