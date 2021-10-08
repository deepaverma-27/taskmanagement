class Task < ApplicationRecord
	belongs_to :project
	has_many  :task_assigns
	has_many  :employees ,through: :task_assigns
	validates :name, presence:true 

end
