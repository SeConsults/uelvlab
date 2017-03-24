class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.url :logs, :path
      
      
      t.timestamps null: false
    end
  end
end
