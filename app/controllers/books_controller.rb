class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.name = params[:book][:name]
    @book.auteur = params[:book][:auteur]
    @book.description = params[:book][:description]
    @book.save

    redirect_to show
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to '/books'
  end

  def upvote
    @book = Book.find(params[:id])
    @book.score += 1
    @book.save
    redirect_to show
  end
end
