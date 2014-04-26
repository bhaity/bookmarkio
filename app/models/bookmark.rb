class Bookmark < ActiveRecord::Base
	before_validation :generate_short_url, :get_metadata
  validates_presence_of :url, :short_url
  validate :url_must_be_valid
 
  def url_must_be_valid
    unless url =~ /^#{URI::regexp}$/
      errors.add(:url, "Invalid URL.")
    end
  end

  def generate_short_url
  	self[:short_url] = ShortURL.shorten(url) if url
  end

  def get_metadata
    page = MetaInspector.new(url) rescue nil
    if page
	    self[:title] = page.title
	    self[:description] = page.description
	    self[:keywords] = page.meta['keywords']
	    self[:image_url] = page.image || page.images.first
	  end
  end

end
