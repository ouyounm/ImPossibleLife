class Blog < ActiveRecord::Base
  has_attached_file :background_image
  validates_attachment_content_type :background_image, :content_type => /\Aimage\/.*\Z/
  has_many :entries
end
