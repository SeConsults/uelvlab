class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :module
    end
  end
end
