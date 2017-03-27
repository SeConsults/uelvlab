class AddColumnsToVlabs < ActiveRecord::Migration
  def change
    add_column :vlabs, :instruction, :text
    add_column :vlabs, :logfile, :text
  end
end
