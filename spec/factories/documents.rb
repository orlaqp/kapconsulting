# == Schema Information
#
# Table name: documents
#
#  id            :integer          not null, primary key
#  department_id :integer
#  name          :string(255)
#  description   :string(255)
#  url           :string(255)
#  is_active     :boolean
#  created_at    :datetime
#  updated_at    :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :document do
    department_id 1
    name "MyString"
    description "MyString"
    url "MyString"
    is_active false
  end
end
