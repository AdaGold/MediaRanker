class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @movie = Book.find(params[:id])
  end

  def update
    @movie = Book.find(params[:id])
    @movie.name = params[:movie][:name]
    @movie.auteur = params[:movie][:auteur]
    @movie.description = params[:movie][:description]
    @movie.save

    redirect_to show
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to '/movies'
  end

  def upvote
    @movie = Movie.find(params[:id])
    @movie.score += 1
    @movie.save
    redirect_to show
  end
end
