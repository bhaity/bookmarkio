require 'spec_helper'

describe Bookmark do
  let(:bookmark) { create :bookmark }

  describe "validations" do
  	it "requires a URL" do
  	  bookmark.url = nil
  	  expect(bookmark).to have(1).errors_on(:url)
  	end
  	it "rejects an invalid URL" do
  	  bookmark.url = "invalid url"
      expect(bookmark).to have(1).error_on(:url)
    end
    it "accepts URLs starting www" do
      bookmark.url = "www.nme.com/blogs/nme-blogs/the-libertines-what-do-you-think-about-a-potential-reunion"
      expect(bookmark).to be_valid
    end
    context "when the url doesn't start with http://" do
  	  let(:bookmark) { create :bookmark, url: "www.nme.com/blogs/nme-blogs/the-libertines-what-do-you-think-about-a-potential-reunion" }
	    it "prepends http:// to the url " do
	      expect(bookmark.url).to start_with("http://")
	    end
	  end
    it "generates a short URL" do
      expect(bookmark.short_url).not_to be_nil
  	end
  end

  describe "after validations" do
  	it "uses the og:image as image URL" do
      expect(bookmark.image_url).to eq("http://www.nme.com/images/gallery/2012LibertinesRS300312.jpg")
  	end
  	context "metainspector does not find an og:image" do
  	  let(:bookmark) { create :bookmark, url: "http://245w14.com" }
      it "uses the first image on the page as image URL" do
      	expect(bookmark.image_url).to eq("http://www.245w14.com/images/245_home_v02.gif")
      end
  	end
    context "metainspector does not find any images on the page" do
      let(:bookmark) { create :bookmark, url: "http://newyork.craigslist.org/" }
      it "image url is nil" do
      	expect(bookmark.image_url).to be_nil
      end
    end
  end

  describe "relationships" do

  	it "belongs to a site" do
      expect(bookmark.site.domain).to eq("nme.com")
  	end
  	it "is destroyed if its site is destroyed" do

  	end
  end

end
