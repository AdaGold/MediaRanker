class VotesController < ApplicationController
  
  #Don't forget to add a flash here saying user not found..you can't vote.
  def current
    @user = User.find_by(id: session[:user_id])
    if @user.nil?
      head :not_found
      return
    end 
  end
  
  # def index
  #   @votes = Vote.all
  #   #To show all the votes a user has made 
  #   #Get the user and look for all the times that user and work Id show up 
  
  
  
  #   # @users = User.works.all
  #   # @works = Works.users.all
  #   # @user.votes = Vote.where(user_id: user.id)
  #   # @work.votes = Vote.where(work_id: work.id
  #   # @votes = Votes.where("work_id = ?", params[:work_id))
  # end
  
  def upvote
    #if the current user is logged in 
    
    @user = User.find_by(id: session[:user_id])
    if @user
      current_user_id = @user.id
      work_id = Work.find_by(id: params["work_id"]).id
      @vote = Vote.new(user_id: current_user_id, work_id: work_id)
      if @vote.save
        flash[:message] = "You successfully upvoted!"
        redirect_to root_path
        return
      elsif @vote.errors.messages == ["User can only vote once per work"]
        flash[:message] = "User can only vote once per work"
        redirect_to root_path
        return
      else
        flash[:message] = "A problem occurred"
        redirect_to root_path
        return
      end
    else
      flash[:message] = "You must be logged in to vote"
      redirect_to root_path
    end
  end
end
