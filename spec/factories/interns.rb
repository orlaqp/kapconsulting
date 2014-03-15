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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :intern do
    department_id 1
    term_id 1
    position_title "MyString"
    first_name "MyString"
    last_name "MyString"
    phone_number "MyString"
    time_zone_id 1
    personal_email "MyString"
    school_email "MyString"
  end
end
