class AddPaperclipToBlog < ActiveRecord::Migration
  def self.up
    add_attachment :blogs, :background_image
  end

  def self.down
    remove_attachment :blogs, :background_image
  end
end
