require 'spec_helper'

describe Site do
  let(:site) { create :site }

  describe "validations" do
  	it "requires a domain" do
  		site.domain = nil
  		expect(site).to have(1).error_on(:domain)
  	end
  end

  describe "relationships" do
  	xit "requires at least one bookmark" do
  	end

  	xit "is destroyed if its last bookmark is destroyed" do
  	end
  end

end
