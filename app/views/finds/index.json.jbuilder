json.array!(@finds) do |find|
  json.extract! find, :id, :album_id, :user_id, :photo
  json.url find_url(find, format: :json)
end
