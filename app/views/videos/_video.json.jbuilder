json.extract! video, :id, :title, :description, :date, :url, :created_at, :updated_at
json.url video_url(video, format: :json)
