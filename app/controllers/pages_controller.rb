class PagesController < ApplicationController
  def index
    # FIND THE TOP TEN MOVIES
    @movies = Movie.all

    movie_id_score = []
    @movies.each do |movie|
      movie_id_score << [movie.score, movie.id]
    end

    movie_id_score.sort_by {|score, id| -id}
    top10_movies = movie_id_score[0..10]


    @top10_movies = []
    top10_movies.each do |score, id|
      @top10_movies << Movie.find(id)
    end


    # FIND THE TOP TEN BOOKS
    @books = Book.all

    book_id_score = []
    @books.each do |book|
      book_id_score << [book.score, book.id]
    end

    book_id_score.sort_by {|score, id| -id}
    top10_books = book_id_score[0..10]


    @top10_books = []
    top10_books.each do |score, id|
      @top10_books << Book.find(id)
    end

    # FIND THE TOP TEN SONGS
    @songs = Song.all

    song_id_score = []
    @songs.each do |song|
      song_id_score << [song.score, song.id]
    end

    song_id_score.sort_by {|score, id| -id}
    top10_songs = song_id_score[0..10]


    @top10_songs = []
    top10_songs.each do |score, id|
      @top10_songs << Song.find(id)
    end

  end
end
