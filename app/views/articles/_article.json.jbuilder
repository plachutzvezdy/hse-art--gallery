json.extract! article, :id, :title, :about, :date, :cover, :created_at, :updated_at
json.url article_url(article, format: :json)
