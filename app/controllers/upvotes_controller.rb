class UpvotesController < ApplicationController
  def index
    @books = Work.where(category: "Book").limit(2)
    @albums = Work.where(category: "Album").limit(2)
    @movies = Work.where(category: "Movie").limit(2)

    # @upvotes = Upvote.all
    # Upvote.group(:work_id).order('count_id DESC').limit(5).count(:id)

    tallied = Upvote.group(:work_id).count
    top = tallied.select {|k,v| v == tallied.values.max }

    @featured = Work.find_by(id: top.keys)
    @count = top.values

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

  private
end
