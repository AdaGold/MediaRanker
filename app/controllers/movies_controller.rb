class MoviesController < ApplicationController
  def index
    @items = Movie.order('votes DESC')
  end

  def show
    movie = Movie.find(params[:id])
    @name = movie.name
    @votes = movie.votes
    @creator = movie.creator
    @description = movie.description
  end

  def edit
    @object = Movie.find(params[:id])
    @method = :put
    @path = movies_update_path(@object)
    @form_name = "Edit"
  end

  def update
    object = Movie.find(params[:id])
    object.update(name: params[:movie][:name],
                  creator: params[:movie][:creator],
                  description: params[:movie][:description])
  end

  def new
    @object = Movie.new
    @method = :post
    @path = movies_create_path(@object)
    @form_name = "New"
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
