class AddMoreFiledsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :middle_name, :string
    add_column :users, :last_name, :string
    add_column :users, :position_title, :string
    add_column :users, :department_id, :integer
    add_column :users, :term_id, :integer
    add_column :users, :time_zone, :string
    add_column :users, :phone_number, :string
    # add_column :users, :hourly_rate, :decimal

    remove_column :users, :name, :string
  end
end
