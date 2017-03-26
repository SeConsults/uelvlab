class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.string "sessionNo"
    end
  end
end
