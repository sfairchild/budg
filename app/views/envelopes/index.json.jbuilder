json.array!(@envelopes) do |envelope|
  json.extract! envelope, :id
  json.url envelope_url(envelope, format: :json)
end
