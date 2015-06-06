json.array!(@yius) do |yiu|
  json.extract! yiu, :id, :name, :description, :picture
  json.url yiu_url(yiu, format: :json)
end
