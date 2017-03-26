class CreateActivitylogs < ActiveRecord::Migration
  def change
    create_table :activitylogs do |t|
      t.string "logNunmber"
    end
  end
end
