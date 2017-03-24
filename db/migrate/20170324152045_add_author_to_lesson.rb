class AddAuthorToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :author, :text
    add_column :lessons, :title, :text
    add_column :lessons, :description, :text
    
    timestamps null: false
  end
end
