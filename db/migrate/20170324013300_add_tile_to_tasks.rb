class AddTileToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :title, :text
    add_column :tasks, :description, :string
    add_column :tasks, :created_at, :daytime
    add_column :tasks, :updated_at, :daytime
  end
end
