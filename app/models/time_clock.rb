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

  belongs_to :user

  validates :start_time, presence: true
  validates :end_time, :comments, presence: true, :on => :update

  def self.get_last_clock_in(user_id)
    where("user_id = ? AND end_time IS NULL", user_id).first
  end

  def self.filter(filter)        
    result = TimeClock.includes(:user).order(:start_time)
    if !filter.user_id.blank?
      result = result.where("user_id = ?", filter.user_id)
    elsif !filter.department_id.blank?
      department_users = Department.find(filter.department_id).users.select(:id)
      result = result.where(:user_id => department_users.select("id"))
    end    
    result = result.where("start_time >= ?", Date.parse(filter.start_date)) unless filter.start_date.blank?
    result = result.where("end_time <= ?", Date.parse(filter.end_date)) unless filter.end_date.blank?
    result.load
  end

end
