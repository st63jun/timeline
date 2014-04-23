class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.integer :parent_id
      t.string :title
      t.datetime :pushed_at
      t.datetime :popped_at

      t.timestamps
    end
  end
end
