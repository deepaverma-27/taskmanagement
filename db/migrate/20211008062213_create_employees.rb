class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string  :name
      t.string  :address
      t.integer :moblie_no
      t.integer :project_id, foreign_kay:true
    
      t.timestamps
    end
    add_index :employees, :project_id
  end
end
