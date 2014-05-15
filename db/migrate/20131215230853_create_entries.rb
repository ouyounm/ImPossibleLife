class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.string :sub_title
      t.text :text
      t.string :pictures
      t.string :videos
      t.integer :blog_id

      t.timestamps
    end
  end
end
