class UpvotesController < ApplicationController
  before_action :find_user
  def index
    @books = Work.get_sorted_works("Book")
    @albums = Work.get_sorted_works("Album")
    @movies = Work.get_sorted_works("Movie")

    @featured = Upvote.featured_work
  end

  def new
    @upvote = Upvote.new
  end

  def create
    if @user
      user = @user.id
      work = params[:work_id]
      created = Date.today

      @upvote = Upvote.create(work_id: work, user_id: user, vote_date: created)

      if @upvote.save
        flash[:success] = "#{@upvote.work.title} upvoted"
      end
    else
      flash.now[:alert] = {user: "Must log in to do that!"}
    end
    redirect_back fallback_location: :works_path
  end


  def destroy
    @vote = Upvote.find_by(id: params[:id])
    @vote.destroy
  end

  private

  def upvote_params
    return params.require(:upvote).permit(:user_id, :work_id, :vote_date)
  end

end
