json.array!(@features) do |feature|
  json.extract! feature, :id, :place_id, :name, :description, :photo, :thumbnail
  json.url feature_url(feature, format: :json)
end
