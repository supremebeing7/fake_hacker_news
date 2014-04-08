class Link < ActiveRecord::Base

  def shorten_url
    self.url.gsub(/http:\/\/(?:www\.)?/, '').gsub(/\/.*/, '')
  end
end
