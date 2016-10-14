class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    # want all albums to display on welcome page
  end

  def show
    @myalbum = Album.find(params[:id].to_i)
  end

  def new
    @myalbum = Album.new
  end

  def create
    @myalbum = Album.new
    @myalbum.name = params[:album][:name]
    @myalbum.director = params[:album][:director]
    @myalbum.description = params[:album][:description]

    @myalbum.save
    # may need to change to album specific page
    redirect_to root_path
  end


  def edit
    @myalbum = Album.find(params[:id])

  end


  def update
    #use one argument per line for readability
    Album.update(
      params[:id],
      name: params[:album][:name],
      director: params[:album][:director],
      description: params[:album][:description])
    
    #may need to redirect to album specific page
    redirect_to action: 'index'
  end


  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    redirect_to action: 'index'

  end
end
