class BooksController < ApplicationController
  def index
    @items = Book.order('votes DESC')
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
    @method = :put
    @path = books_update_path(@object)
    @form_name = "Edit"
  end

  def update
    object = Book.find(params[:id])
    object.update(name: params[:book][:name],
                  creator: params[:book][:creator],
                  description: params[:book][:description])
  end

  def new
    @object = Book.new
    @method = :post
    @path = books_create_path(@object)
    @form_name = "New"
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
