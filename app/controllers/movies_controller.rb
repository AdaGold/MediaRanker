class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    # want all movies to display on welcome page
  end

  def new
    @mymovie = Movie.new
  end

  def create
    @mymovie = Movie.new
    @mymovie.name = params[:movie][:name]
    @mymovie.director = params[:movie][:director]
    @mymovie.description = params[:movie][:description]

    @mymovie.save
    # may need to change to movie specific page
    redirect_to root_path
  end


  def edit
    @mymovie = Movie.find(params[:id])

  end


  def update
    # big parameter list - use one argument per line
    Movie.update(
      params[:id],
      name: params[:movie][:name],
      director: params[:movie][:director],
      description: params[:movie][:description])
    
    #may need to redirect to movie specific page
    redirect_to root_path
  end


  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to root_path

  end

  def show

    @mymovie = Movie.find(params[:id].to_i)

  end


end
