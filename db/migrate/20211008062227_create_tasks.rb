class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
       t.string  :name
       t.string  :description
       t.integer :project_id ,foreign_key:true

      t.timestamps

    end
    add_index :tasks, :project_id
  end
end
