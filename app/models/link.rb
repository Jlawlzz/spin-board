class Link < ActiveRecord::Base

  belongs_to :user

  validates :title, presence: true
  validates :link_url, url: true

end
