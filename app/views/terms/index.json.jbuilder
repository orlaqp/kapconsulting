json.array!(@terms) do |term|
  json.extract! term, :id, :name, :start_date, :end_date
  json.url term_url(term, format: :json)
end
