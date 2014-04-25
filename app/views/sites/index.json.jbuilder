json.array!(@sites) do |site|
  json.extract! site, :id, :domain
  json.url site_url(site, format: :json)
end
