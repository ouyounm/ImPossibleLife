class AddSumaryPoint1ToClassifieds < ActiveRecord::Migration
  def change
    add_column :classifieds, :summary_point_1, :string
  end
end
