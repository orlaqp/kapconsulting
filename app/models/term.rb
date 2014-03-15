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

class Term < ActiveRecord::Base

  validates :name, presence: true

end
