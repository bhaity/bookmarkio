class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :description
      t.string :keywords
      t.string :url
      t.string :short_url
      t.string :image_url

      t.timestamps
    end
  end
end
