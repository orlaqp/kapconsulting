# == Schema Information
#
# Table name: time_clocks
#
#  id         :integer          not null, primary key
#  start_time :datetime
#  end_time   :datetime
#  comments   :text
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :time_clock do
    start_time "2014-03-14 12:46:07"
    end_time "2014-03-14 12:46:07"
    comments "MyText"
  end
end
