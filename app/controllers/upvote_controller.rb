class UpvoteController < ApplicationController
  belongs_to :book :movie :upvote

   def index
    @upvotes = upvote.all
    # want all upvotes to display on welcome page
  end

  def show
    @myupvote = upvote.find(params[:id].to_i)
  end

  def upvote
    @upvote = upvote.find(params[:id])
    @upvote.ranking.create
    redirect_to(upvote_path)
  end

  def new
    @myupvote = upvote.new
  end

  def create
    @myupvote = upvote.new
    @myupvote.name = params[:upvote][:name]
    @myupvote.director = params[:upvote][:director]
    @myupvote.description = params[:upvote][:description]

    @myupvote.save
    # may need to change to upvote specific page
    redirect_to root_path
  end


  def edit
    @myupvote = upvote.find(params[:id])

  end


  def update
    #use one argument per line for readability
    upvote.update(
      params[:id],
      name: params[:upvote][:name],
      director: params[:upvote][:director],
      description: params[:upvote][:description])
    
    #may need to redirect to upvote specific page
    redirect_to action: 'index'
  end


  def destroy
    @upvote = upvote.find(params[:id])
    @upvote.destroy

    redirect_to action: 'index'

  end
end
