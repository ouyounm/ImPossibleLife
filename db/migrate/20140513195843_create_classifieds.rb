class CreateClassifieds < ActiveRecord::Migration
  def change
    create_table :classifieds do |t|
      t.string :title
      t.date :date_posted
      t.string :picture
      t.integer :price
      t.string :address
      t.string :phone_number
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
