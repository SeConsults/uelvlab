class AddStudentnumberToLogs < ActiveRecord::Migration
  def change
    add_column :logs, :studentnumber, :string
  end
end
