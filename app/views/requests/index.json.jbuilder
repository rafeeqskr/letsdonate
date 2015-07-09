json.array!(@requests) do |request|
  json.extract! request, :id, :ngo_id, :user_id, :donation_id, :status
  json.url request_url(request, format: :json)
end
