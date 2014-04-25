require 'spec_helper'

describe Bookmark do

  describe "validations" do
  	xit "has a URL" do
  	end

  	xit "has a URL in the correct format" do
    end

    xit "has a generated short URL" do
  	end

  	xit "has a generated short URL from tinyURL" do
    end

    xit "has an image URL" do
  	end

  	context "metainspector does not find an og:image" do
      xit "looks for the first image on the page" do
      end

      context "metainspector does not find any images on the page" do
      	 xit "uses the default image" do
        end
      end
  	end

    xit "could have a title" do
  	end

  	xit "could have a description" do
  	end

  	xit "could have keywords" do
  	end
  end

  describe "relationships" do
  	xit "belongs to a site" do
  	end

  	xit "is destroyed if its site is destroyed" do
  	end
  end

end
