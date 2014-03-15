class CreateTimeClocks < ActiveRecord::Migration
  def change
    create_table :time_clocks do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.text :comments

      t.timestamps
    end
  end
end
