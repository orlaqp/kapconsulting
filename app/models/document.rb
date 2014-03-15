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

class Document < ActiveRecord::Base

  validates :name, :url, presence: true

  scope :active, -> { where(is_active: true) }

  belongs_to :department

end
