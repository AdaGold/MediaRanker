class UpvotesController < ApplicationController
  def index
    @books = Work.where(category: "Book").limit(5)
    @albums = Work.where(category: "Album").limit(5)

    @movies = Work.where(category: "Movie")

    # Upvote.group(:work_id).order('count_id DESC').limit(2).count(:id)

    tallied = Upvote.group(:work_id).count
    top = tallied.select {|k,v| v == tallied.values.max }

    @featured = Work.find_by(id: top.flatten[0])

    @count = top.flatten[1]
  end

  def new
    @upvote = Upvote.new
  end

  def create
    @upvote = Upvote.create(upvote_params)
  end


  def destroy
    @vote = Upvote.find_by(id: params[:id])
    @vote.destroy
  end

  private

  def upvote_params
    return params.require(:upvote).permit(:user_id, :work_id, :created_at)
  end

end
