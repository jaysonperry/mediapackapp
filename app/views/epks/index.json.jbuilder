json.array!(@epks) do |epk|
  json.extract! epk, :id, :name, :user_id
  json.url epk_url(epk, format: :json)
end
