json.array!(@party_role_types) do |party_role_type|
  json.extract! party_role_type, :name, :description
  json.url party_role_type_url(party_role_type, format: :json)
end