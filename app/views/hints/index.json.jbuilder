json.array!(@hints) do |hint|
  json.extract! hint, :id, :name, :photo, :description, :thumbnail
  json.url hint_url(hint, format: :json)
end
