class UsersController < ApplicationController

    def index
      @user = User.all
    end

    def show
      user_id = params[:id]
      @user = User.find_by(id: user_id)
      if @user.nil?
        head :not_found
        return
      end
    end

    def new
      @user = User.new
    end

  def create
    @user = User.new( user_params )
    if @user.save
      redirect_to user_path(@user.id)
    else
      render new_user_path
    end
  end

private
  def user_params
    return params.require(:user).permit(:name)
  end

end