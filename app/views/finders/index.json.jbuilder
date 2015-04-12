json.array!(@finders) do |finder|
  json.extract! finder, :id, :name, :photo, :album_id
  json.url finder_url(finder, format: :json)
end
