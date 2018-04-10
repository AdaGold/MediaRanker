class UpvotesController < ApplicationController
  def index
    @books = Work.where(category: "Book").limit(2)
    @albums = Work.where(category: "Album").limit(2)
    @movies = Work.where(category: "Movie").limit(2)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
