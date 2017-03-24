class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.image :title
    end
  end
end
