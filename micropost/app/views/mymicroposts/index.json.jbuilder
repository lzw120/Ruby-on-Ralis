json.array!(@mymicroposts) do |mymicropost|
  json.extract! mymicropost, :id, :content, :user_id
  json.url mymicropost_url(mymicropost, format: :json)
end
