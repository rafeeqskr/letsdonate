json.array!(@donations) do |donation|
  json.extract! donation, :id, :name, :description, :category, :expiry, :city, :user_id
  json.url donation_url(donation, format: :json)
end
