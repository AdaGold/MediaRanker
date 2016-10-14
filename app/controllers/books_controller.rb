class BooksController < ApplicationController

  def index
    @books = Book.all
    # want all books to display on welcome page
  end

  def show
    @mybook = Book.find(params[:id].to_i)
  end

  def new
    @mybook = Book.new
  end

  def create
    @mybook = Book.new
    @mybook.name = params[:book][:name]
    @mybook.author = params[:book][:author]
    @mybook.description = params[:book][:description]

    @mybook.save
    # may need to change to book specific page
    redirect_to root_path
  end


  def edit
    @mybook = book.find(params[:id])
  end


  def update
    # big parameter list - use one argument per line
    Book.update(
      params[:id],
      name: params[:book][:name],
      director: params[:book][:author],
      description: params[:book][:description])
    
    #may need to redirect to book specific page
    redirect_to action: 'index'
  end


  def destroy
    @book = book.find(params[:id])
    @book.destroy

    redirect_to action: 'index'
  end
  
end
