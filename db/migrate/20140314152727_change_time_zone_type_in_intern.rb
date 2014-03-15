class ChangeTimeZoneTypeInIntern < ActiveRecord::Migration
  def change
    change_column :interns, :time_zone_id, :string
  end
end
