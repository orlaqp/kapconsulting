class CreateInterns < ActiveRecord::Migration
  def change
    create_table :interns do |t|
      t.integer :department_id
      t.integer :term_id
      t.string :position_title
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.integer :time_zone_id
      t.string :personal_email
      t.string :school_email

      t.timestamps
    end
  end
end
