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
    redirect_to albums_show_path(object.id)
  end

  def new
    @object = Album.new
    @method = :post
    @path = albums_create_path(@object)
    @form_name = "New"
  end

  def create
    object = Album.new(name: params[:album][:name],
                  creator: params[:album][:creator],
                  description: params[:album][:description],
                  votes: 0)
    object.save
    redirect_to albums_show_path(object.id)
  end

  def destroy
    object = Album.find(params[:id])
    object.destroy
    redirect_to albums_index_path
  end

  def upvote
    album = Album.find(params[:id])
    album.votes += 1
    album.save
    redirect_to albums_show_path
  end
end
