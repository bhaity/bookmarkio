class TagsController < ApplicationController
  def autocomplete_tags
  	query = params[:q]
    if query[-1,1] == " "
      query = query.gsub(" ", "")
      Tag.find_or_create_by_name(query)
    end
    @tags = ActsAsTaggableOn::Tag.all
    @tags = @tags.select { |v| v.name =~ /#{query}/i }
    respond_to do |format|
      format.json{ render :json => @tags.collect{|t| {:id => t.name, :name => t.name }} }
    end
  end

end
