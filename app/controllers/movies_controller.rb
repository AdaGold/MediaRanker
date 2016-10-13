class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    # want all movies to display on welcome page
    render "index"
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new
    @task.name = params[:movie][:name]
    @task.director = params[:movie][:director]
    @task.description = params[:movie][:description]

    @movie.save
    # may need to change to movie specific page
    redirect_to root_path
  end


  def edit
    @movie = Movie.find(params[:id])

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
    @task.destroy

    redirect_to root_path

  end

  def show

    @movie = Movie.find(params[:id])

  end


end
