json.extract! article, :id, :magazine, :title, :subtitle, :header_img, :header_vod, :created_at, :updated_at
json.url article_url(article, format: :json)
