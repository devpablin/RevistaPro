json.extract! event, :id, :title, :subtitle, :place, :date, :body, :created_at, :updated_at
json.url event_url(event, format: :json)
