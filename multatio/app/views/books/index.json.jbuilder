json.array!(@books) do |book|
  json.extract! book, :title, :reason, :price, :url, :severity, :howto, :buydate, :country
  json.url book_url(book, format: :json)
end