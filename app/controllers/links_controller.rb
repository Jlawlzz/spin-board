class LinksController < ApplicationController

  def index
  end

  def create
    current_user.links << Link.create(link_params)
    redirect_to links_path
  end

  def edit
    @link = current_user.links.find(params[:id])
  end

  def update
    link = current_user.links.find(params[:id])
    link.update_attributes(title: params[:link][:title], link_url: params[:link][:link_url])
    redirect_to links_path
  end

  def link_params
    params.require(:link).permit(:title, :link_url)
  end

end
