module ApplicationHelper

  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-block">
      <button type="button" class="close" data-dismiss="alert">&#215;</button>
      #{messages}
    </div>
    HTML
    html.html_safe
  end

  def format_date_time(date, format)
    if date.blank?
      "-- not available --"
    else
      date.strftime(format)
    end
  end

  def humanize_time_distance(start_time, end_time)
    if start_time.blank? or end_time.blank?
      "-- not available --"
    else
      distance_of_time_in_words(start_time, end_time)
    end
  end

end
