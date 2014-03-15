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

require 'spec_helper'

describe TimeClock do
  pending "add some examples to (or delete) #{__FILE__}"
end
