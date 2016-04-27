class Api::V1::LinksController < ApplicationController

  respond_to :json

  def index
    respond_with current_user.links
  end

  def update
    link = current_user.links.find(params[:id])
    link.update_attributes(link_params)

    redirect_to '/links_index'

  end

  private

  def link_params
    params.permit(:read_status)
  end

end
