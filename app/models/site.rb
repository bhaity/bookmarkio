class Site < ActiveRecord::Base
  validates_presence_of :domain

  has_many :bookmarks, dependent: :destroy
end
