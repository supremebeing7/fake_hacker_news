class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      params[:link][:slug] = ("#{@link.id}-#{@link.description}").parameterize
      @link.update(link_params)
      redirect_to links_path
    else
      render 'new'
    end
  end

  def update
    @link = Link.find(params[:id])
    @link.update(link_params)
    redirect_to root_path
  end

  def newest
    @links = Link.all
  end

  private

  def link_params
    params.require(:link).permit(:description, :url, :slug, :vote_count, :user_name)
  end


end
