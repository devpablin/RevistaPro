json.extract! review, :id, :name, :description, :body, :year, :date, :place, :img, :created_at, :updated_at
json.url review_url(review, format: :json)
