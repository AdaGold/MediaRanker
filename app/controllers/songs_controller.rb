class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    @song = Song.find(params[:id])

    redirect_to show
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    redirect_to '/songs'
  end

  def upvote
    @song = Song.find(params[:id])
    @song.score += 1
    @song.save
    redirect_to show
  end
end
