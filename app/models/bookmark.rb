class Bookmark < ActiveRecord::Base
  validates_presence_of :url
  validate :url_must_be_valid
  after_validation :generate_short_url, :get_metadata
  after_save :associate_with_site



  belongs_to :site
 
  def url_must_be_valid
  	self[:url] = "http://#{url}" unless url && url.start_with?('http')
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

  def associate_with_site
  	self[:site_id] = Site.find_or_create_by(domain: PublicSuffix.parse(URI.parse(url).host).domain).id 
  end

end
