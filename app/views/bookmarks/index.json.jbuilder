json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :id, :title, :description, :keywords, :url, :short_url, :image_url
  json.url bookmark_url(bookmark, format: :json)
end
