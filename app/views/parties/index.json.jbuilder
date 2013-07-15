json.array!(@parties) do |party|
  json.extract! party, 
  json.url party_url(party, format: :json)
end