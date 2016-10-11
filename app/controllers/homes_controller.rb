class HomesController < ApplicationController
  def index
    @books = Book.order('votes DESC')
    @movies = Movie.order('votes DESC')
    @albums = Album.order('votes DESC')
  end
end
