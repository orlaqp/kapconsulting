class AddUserIdToTimeClock < ActiveRecord::Migration
  def change
    add_column :time_clocks, :user_id, :integer
  end
end
