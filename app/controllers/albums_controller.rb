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
    album = Album.find(params[:id])
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
    album = Album.find(params[:id])
    album.votes += 1
    album.save
    redirect_to albums_show_path
  end
end
