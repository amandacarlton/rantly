json.array!(@rants) do |rant|
  json.extract! rant, :id, :title, :body, :author_id
  json.url rant_url(rant, format: :json)
end
