class Api::V1::LinksController < ApplicationController

  respond_to :json

  def index
    respond_with current_user.links
  end

  private

  def link_params
    params.require(:link).permit(:title, :link_url)
  end

end
