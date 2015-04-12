json.array!(@rounds) do |round|
  json.extract! round, :id, :start_date, :end_date
  json.url round_url(round, format: :json)
end
