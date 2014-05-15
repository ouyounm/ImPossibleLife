class Video < ActiveRecord::Base


   has_attached_file :clip, :styles => {
    :thumb => { :geometry => "150x300#", :format => 'jpg', :time => 10 },
    :large => { :geometry => "720x404#", :format => 'mp4' }
  }, :processors => [:ffmpeg]

  validates_attachment_content_type :clip, :content_type => %w(video/mp4 video/flv video/avi)

  validates :title, length: { maximum: 77 }
end
