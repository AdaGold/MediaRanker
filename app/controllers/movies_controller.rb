class MoviesController < ApplicationController
  def index
  end

  def show
    movie = Movie.find(params[:id])
    @name = movie.name
    @votes = movie.votes
    @creator = movie.creator
    @description = movie.description
  end

  def edit
    movie = Movie.find(params[:id])
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end

  def upvote
    movie = Movie.find(params[:id])
    movie.votes += 1
    movie.save
    redirect_to movies_show_path
  end
end
