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
    @object = Book.find(params[:id])
    @path = books_update_path(@object)
  end

  def update
    object = Book.find(params[:id])
    object.update(name: params[:book][:name],
                  creator: params[:book][:creator],
                  description: params[:book][:description])
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
