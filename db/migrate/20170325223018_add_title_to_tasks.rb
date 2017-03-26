class AddTitleToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :title, :text
    add_column :tasks, :details, :string
  end
end
