json.array!(@donations) do |donation|
  json.extract! donation, :id, :name, :email, :street, :city, :state, :zip, :amount, :chapter
  json.url donation_url(donation, format: :json)
end
