class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.text :studentname
      t.string :studentnumber
      t.string :studentlevel
      t.string :studentpswd
      
      t.timestamps nul: false
    end
  end
end
