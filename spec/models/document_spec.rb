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

require 'spec_helper'

describe Document do
  pending "add some examples to (or delete) #{__FILE__}"
end
