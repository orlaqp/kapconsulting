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

class Intern < ActiveRecord::Base

  belongs_to :term
  belongs_to :department

  validates :department_id, :term_id, :first_name, :last_name, :phone_number, :school_email, presence: true  
  

end
