class AddSumaryPoint3ToClassifieds < ActiveRecord::Migration
  def change
    add_column :classifieds, :summary_point_3, :string
  end
end
