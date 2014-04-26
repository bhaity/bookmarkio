class AddSiteIdToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :site_id, :integer
  end
end
