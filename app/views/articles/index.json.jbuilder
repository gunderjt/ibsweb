json.array!(@articles) do |article|
  json.extract! article, :id, :title, :body, :date_of_article
  json.url article_url(article, format: :json)
end
