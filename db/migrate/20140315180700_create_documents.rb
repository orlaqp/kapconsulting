class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :department_id
      t.string :name
      t.string :description
      t.string :url
      t.boolean :is_active

      t.timestamps
    end
  end
end
