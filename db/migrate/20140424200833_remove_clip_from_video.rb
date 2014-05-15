class RemoveClipFromVideo < ActiveRecord::Migration
  def change
    remove_column :videos, :clip
  end
end
