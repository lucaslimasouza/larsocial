json.array!(@condominia) do |condominium|
  json.extract! condominium, :id, :address, :number, :zip_code, :building, :designation_building
  json.url condominium_url(condominium, format: :json)
end
