json.array!(@interns) do |intern|
  json.extract! intern, :id, :department_id, :term_id, :position_title, :first_name, :last_name, :phone_number, :time_zone_id, :personal_email, :school_email
  json.url intern_url(intern, format: :json)
end
