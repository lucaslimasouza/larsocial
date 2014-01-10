json.array!(@apartments) do |apartment|
  json.extract! apartment, :id, :designation_building, :number
  json.url apartment_url(apartment, format: :json)
end
