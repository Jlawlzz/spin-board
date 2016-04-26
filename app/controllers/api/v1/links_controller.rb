class Api::V1::LinksController < ApplicationController

  respond_to :json

  def index
    respond_with current_user.links
  end

  def update
    link = current_user.links.find(params[:id])
    link.update_attributes(read_status: params[:read_status])
    respond_with current_user.links
  end

  private

  def link_params
    params.require(:link).permit(:title, :link_url)
  end

end
