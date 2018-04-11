class UsersController < ApplicationController
  def index
    @users = User.all
    @upvotes = Upvote.all
  end

  def show
    @user = User.find_by(id: params[:id])
    @upvotes = Upvote.where(user_id: params[:id])
    @works = Work.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find_by name: params[:user][:name]

    if @user
      session[:user_id] = @user.id
      flash[:success] = "Wecome back #{@user.name}"
    else
      @user = User.create name: params[:user][:name]
      session[:user_id] = @user.id
      flash[:success] = "Wecome #{@user.name}"
    end

    redirect_to root_path
  end


  def destroy
    session[:user_id] = nil
    flash[:success] = "You logged out!"
    redirect_to root_path
  end
end
