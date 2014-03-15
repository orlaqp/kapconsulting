# == Schema Information
#
# Table name: interns
#
#  id             :integer          not null, primary key
#  department_id  :integer
#  term_id        :integer
#  position_title :string(255)
#  first_name     :string(255)
#  last_name      :string(255)
#  phone_number   :string(255)
#  time_zone_id   :string(255)
#  personal_email :string(255)
#  school_email   :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe Intern do
  pending "add some examples to (or delete) #{__FILE__}"
end
