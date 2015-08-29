class Pin < ActiveRecord::Base
	belongs_to :user
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	has_attached_file 	:image, 
						:styles => { :medium => "300x300", :thumb => "100x100"}, 
						:storage => :s3
end
