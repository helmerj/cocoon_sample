json.array!(@contact_mechanism_types) do |contact_mechanism_type|
  json.extract! contact_mechanism_type, :name, :description
  json.url contact_mechanism_type_url(contact_mechanism_type, format: :json)
end