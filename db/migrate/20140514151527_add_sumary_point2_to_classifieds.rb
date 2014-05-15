class AddSumaryPoint2ToClassifieds < ActiveRecord::Migration
  def change
    add_column :classifieds, :summary_point_2, :string
  end
end
