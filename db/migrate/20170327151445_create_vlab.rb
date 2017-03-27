class CreateVlab < ActiveRecord::Migration
  def change
    create_table :vlabs do |t|
      t.string :title
    end
  end
end
