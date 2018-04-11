class UsersController < ApplicationController
  before_action :find_user
  def index
    @users = User.all
    @upvotes = Upvote.all
  end

  def show
    @user = User.find_by(id: params[:id])
    @upvotes = Upvote.where(user_id: params[:id])
    @works = Work.all
  end
end
