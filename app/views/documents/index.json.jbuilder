json.array!(@documents) do |document|
  json.extract! document, :id, :department_id, :name, :description, :url, :is_active
  json.url document_url(document, format: :json)
end
