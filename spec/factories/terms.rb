# == Schema Information
#
# Table name: terms
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  start_date :datetime
#  end_date   :datetime
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :term do
    name "MyString"
    start_date "2014-03-14 13:55:13"
    end_date "2014-03-14 13:55:13"
  end
end
