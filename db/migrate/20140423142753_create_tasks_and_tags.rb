class CreateTasksAndTags < ActiveRecord::Migration
  def change
    create_table :tasks_and_tags do |t|
      t.belongs_to :task
      t.belongs_to :tag
    end
  end
end
