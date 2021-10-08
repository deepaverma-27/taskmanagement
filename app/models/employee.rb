class Employee < ApplicationRecord
    belongs_to :project
	has_many  :tasks ,through: :task_assigns
	has_many  :task_assigns
end
