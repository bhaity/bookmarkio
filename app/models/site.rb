class Site < ActiveRecord::Base
  validates_presence_of :domain
  include Searchable
  searchable_by "domain", "bookmarks.title", "bookmarks.description" #passing the join args as strings as some contain periods
  has_many :bookmarks, dependent: :destroy
end
