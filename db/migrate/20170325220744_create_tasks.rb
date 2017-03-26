class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string "labNo"
    end
  end
end
