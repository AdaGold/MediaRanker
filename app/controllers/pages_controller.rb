class PagesController < ApplicationController
  def index
    @movies = Movie.all
    @books = Book.all
    @songs = Song.all 
  end
end
