json.array!(@followers) do |follower|
  json.extract! follower, :id, :follower_id, :following_id
  json.url follower_url(follower, format: :json)
end
