class LinksController < ApplicationController

  before_action :authorize

  def index
  end

  def create
    create_link(params)
  end

  def edit
    @link = current_user.links.find(params[:id])
  end

  def update
    link = current_user.links.find(params[:id])
    link.update_attributes(title: params[:link][:title], link_url: params[:link][:link_url])
    redirect_to links_path
  end

  private

  def link_params(params, url_data)
    params_hash = params.require(:link).permit(:title, :link_url)
    params_hash[:url_title] = url_data[:title]
    params_hash[:url_h1] = url_data[:url_h1]
    params_hash
  end

  def create_link(params)
    url_data = UrlHelper.get_summary(params[:link][:link_url])
    current_user.links << Link.create(link_params(params, url_data))
    redirect_to links_path
  end

end
