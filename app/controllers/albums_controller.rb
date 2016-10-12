class AlbumsController < ApplicationController
  def index
    @items = Album.order('votes DESC')
  end

  def show
    album = Album.find(params[:id])
    @name = album.name
    @votes = album.votes
    @creator = album.creator
    @description = album.description
  end

  def edit
    @object = Album.find(params[:id])
    @method = :put
    @path = albums_update_path(@object)
    @form_name = "Edit"
  end

  def update
    object = Album.find(params[:id])
    object.update(name: params[:album][:name],
                  creator: params[:album][:creator],
                  description: params[:album][:description])
  end

  def new
    @object = Album.new
    @method = :post
    @path = albums_create_path(@object)
    @form_name = "New"
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
