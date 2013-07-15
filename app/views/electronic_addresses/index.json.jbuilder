json.array!(@electronic_addresses) do |electronic_address|
  json.extract! electronic_address, :electronic_address_string
  json.url electronic_address_url(electronic_address, format: :json)
end