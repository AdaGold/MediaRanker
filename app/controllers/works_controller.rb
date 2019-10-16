class WorksController < ApplicationController
  def index
    @works = Work.all

    @movies = Work.sort_by_category("movie")
    @books = Work.sort_by_category("book")
    @albums = Work.sort_by_category("album")
  end

  def show
    work_id = params[:id]
    @work = Work.find_by(id: work_id)
    if @work.nil?
      redirect_to works_path
      return
    end
  end

private

  def work_params
    return params.require(:work).permit(:title,:category, :creator, :publication_year, :description)
  end
end
