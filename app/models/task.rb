class Task < ActiveRecord::Base
  belongs_to :project
  has_and_belongs_to_many :tags
  has_one :parent, class_name: 'Task', foreign_key: 'parent_id'
  belongs_to :task, foreign_key: 'parent_id'
end
