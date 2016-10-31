class WelcomeController < ApplicationController
  def index
    # localhost:3000 by itself without anything else in the url is the root (or '/') route and is always going to go to WelcomeController.index

    @first_10_movies = Movie.order(rankings: :desc).limit(10)
    @first_10_books = Book.order(rankings: :desc).limit(10)
    @first_10_albums = Album.order(rankings: :desc).limit(10)

    #so if you want books and albums on the home page, you need to set @books and @albums in the same way as the above @movies

    # your route for '/' goes to welcome controller, index method
    # which is here
    # you're not setting @books here so the view gets no books
    # want all movies to display on welcome page
  end

end
