class LinksController < ApplicationController

  def index
  end

  def create
    binding.pry
    current_user.links << Link.create(link_params)
    redirect_to links_path
  end

  def link_params
    params.require(:link).permit(:title, :link_url)
  end

end
