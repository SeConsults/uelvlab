class CreateHoneydlogs < ActiveRecord::Migration
  def change
    create_table :honeydlogs do |t|
      t.string :personalty
    end
  end
end
