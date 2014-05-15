class Entry < ActiveRecord::Base
  belongs_to :blog, :class_name => "Blog", :foreign_key => 'blog_id'

end
