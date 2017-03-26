class AddDescriptionTo < ActiveRecord::Migration
  def change
    add_column :lectures, :lecturer, :text
    add_column :lectures, :create_at, :datetime
    add_column :lectures, :updated_at, :datetime
  end
end
