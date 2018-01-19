json.extract! report, :id, :title, :subtitle, :place, :date, :body, :created_at, :updated_at
json.url report_url(report, format: :json)
