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

class TimeClock < ActiveRecord::Base

  belongs_to :client

  validates :start_time, presence: true
  validates :end_time, :comments, presence: true, :on => :update

  def self.get_last_clock_in(user_id)
    where("user_id = ? AND end_time IS NULL", user_id).first
  end

end
