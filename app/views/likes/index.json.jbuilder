json.array!(@likes) do |like|
  json.extract! like, :id, :likable_id, :likable_type
  json.url like_url(like, format: :json)
end
