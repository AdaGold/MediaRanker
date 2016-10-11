class AlbumsController < ApplicationController
  def index
  end

  def show
    album = Album.find(params[:id])
    @name = album.name
    @votes = album.votes
    @creator = album.creator
    @description = album.description
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end
end
