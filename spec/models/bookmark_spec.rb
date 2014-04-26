require 'spec_helper'

describe Bookmark do
  let(:bookmark) { create :bookmark }

  describe "validations" do
  	it "requires a URL" do
  	  bookmark.url = nil
  	  expect(bookmark).to have(2).errors_on(:url)
  	end

  	it "requires a URL in the correct format" do
  	  bookmark.url = "invalid url"
      expect(bookmark).to have(1).error_on(:url)
    end

    it "requires a generated short URL" do
      bookmark.url = nil
      bookmark.short_url = nil
      expect(bookmark).to have(1).error_on(:short_url)
      expect(bookmark).to have(2).errors_on(:url)
  	end

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
  	xit "belongs to a site" do
  	end

  	xit "is destroyed if its site is destroyed" do
  	end
  end

end
