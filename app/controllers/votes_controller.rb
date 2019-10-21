class VotesController < ApplicationController

  #Don't forget to add a flash here saying user not found..you can't vote.
   def current
    @user = User.find_by(id: session[:user_id])
    if @user.nil?
      head :not_found
      return
    end 
  end

  def index
    @votes = Vote.all
    # @users = User.works.all
    # @works = Works.users.all
    # @user.votes = Vote.where(user_id: user.id)
    # @work.votes = Vote.where(work_id: work.id
    @votes = Votes.where("work_id = ?", params[:work_id))
  end

  def upvote
    #if the current user is logged in 
    @user = User.find_by(id: session[:user_id])
    if @user
      current_user = @user.id
      work = work.find_by(id: params[:work_id])
      @vote = Vote.new(user_id: current_user, work_id: work)
    else
      flash[:message] = "You must be logged in to vote"
    end

      if @vote.save
        flash[:message] = "You successfully upvoted!"
        return
      else
        flash[:message] = "A problem occurred"
        return
      end



    #Create a new vote
    #new vote must have a user_id and Work_id
    # make sure to save the vote
    # If user is not logged in
    # message them that they have to be logged in order to vote.
    #redirect them to the rootpage.
  end
end
