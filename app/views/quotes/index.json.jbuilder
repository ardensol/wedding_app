json.array!(@quotes) do |quote|
  json.extract! quote, :quote_type, :wedding_style, :budget, :comments, :event_date, :event_time, :zip_code, :solicitation_type
  json.url quote_url(quote, format: :json)
end
