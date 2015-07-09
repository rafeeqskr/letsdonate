json.array!(@ngos) do |ngo|
  json.extract! ngo, :id, :name, :owner_id, :city, :details, :logo_uid
  json.url ngo_url(ngo, format: :json)
end
