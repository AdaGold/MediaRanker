class WorksController < ApplicationController
  before_action :find_user
  before_action :find_work
  def index
    @books = Work.get_sorted_works("Book")
    @albums = Work.get_sorted_works("Album")
    @movies = Work.get_sorted_works("Movie")
  end

  def show
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to works_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @work.update(work_params)
      redirect_to works_path
    else
      render :edit
    end
  end

  def destroy
    @work.destroy

    if @work
      @work.upvotes.each do |upvote|
        upvote.destroy
      end
      if Work.find_by(id: params[:id]).nil?
        flash[:success] = "#{@work.title} deleted"
        redirect_back fallback_location: :works_path
      end
    end
    redirect_to works_path
  end


  private
  def work_params
    return params.require(:work).permit(:title, :category, :creator, :publication_year, :description, :votes)
  end

  def find_work
    @work = Work.find_by id: params[:id]
  end
end
