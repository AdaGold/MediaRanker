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
    redirect_to root_path
  end


  def edit
    @movie = Movie.find(params[:id])

  end


  def update
    Movie.update(params[:id]), name: params[:movie][:name], params[:movie][:director], params [:movie][:description]
    redirect_to root_path
  end


  def destroy

  end

  def show

  end


end
