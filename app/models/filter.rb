class Filter
  attr_accessor :department_id, :user_id, :start_date, :end_date, :showing_as

  def initialize(attributes)
    attributes ||= {}

    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

end