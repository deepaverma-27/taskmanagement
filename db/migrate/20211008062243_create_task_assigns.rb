class CreateTaskAssigns < ActiveRecord::Migration[6.1]
  def change
    create_table :task_assigns do |t|
      t.integer  :task_id, foreign_key:true
      t.integer  :employee_id, foreign_key:true


      t.timestamps
    end
      add_index :task_assigns, :task_id
      add_index :task_assigns, :employee_id

  
  end
end
