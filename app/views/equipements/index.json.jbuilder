json.array!(@equipements) do |equipement|
  json.extract! equipement, :id, :name, :description
  json.url equipement_url(equipement, format: :json)
end
