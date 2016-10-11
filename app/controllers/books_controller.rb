class BooksController < ApplicationController
  def index
  end

  def show
    book = Book.find(params[:id])
    @name = book.name
    @votes = book.votes
    @creator = book.creator
    @description = book.description
  end

  def edit
    book = Book.find(params[:id])
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
    book = Book.find(params[:id])
    book.votes += 1
    book.save
    redirect_to books_show_path
  end
end
