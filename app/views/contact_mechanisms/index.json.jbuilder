json.array!(@contact_mechanisms) do |contact_mechanism|
  json.extract! contact_mechanism, :contact_mechanism_type_id
  json.url contact_mechanism_url(contact_mechanism, format: :json)
end