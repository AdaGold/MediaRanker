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

    redirect_to root_path
  end


  def edit


  end


  def update

  end


  def destroy

  end

  def show

  end


end
