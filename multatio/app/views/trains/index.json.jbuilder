json.array!(@trains) do |train|
  json.extract! train, :title, :memo, :take_date, :user_id
  json.url train_url(train, format: :json)
end