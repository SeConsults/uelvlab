class AddLabNoToLabs < ActiveRecord::Migration
  def change
    add_column :labs, :labNo, :string
    add_column :labs, :created_at, :datetime
    add_column :labs, :updated_at, :datetime
  end
end
