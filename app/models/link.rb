class Link < ActiveRecord::Base
  has_many :comments, as: :commentable

  def shorten_url
    self.url.gsub(/http:\/\/(?:www\.)?/, '').gsub(/\/.*/, '')
  end
end
