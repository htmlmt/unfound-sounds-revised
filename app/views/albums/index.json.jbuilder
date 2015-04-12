json.array!(@albums) do |album|
  json.extract! album, :id, :title, :band, :cover, :rdio_link, :found
  json.url album_url(album, format: :json)
end
