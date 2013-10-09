json.array!(@events) do |event|
  json.extract! event, :title, :description, :date, :time
  json.url event_url(event, format: :json)
end
