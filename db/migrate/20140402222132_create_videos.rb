class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :clip
      t.string :summary

      t.timestamps
    end
  end
end
