class Pin < ActiveRecord::Base
	belongs_to :user
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	has_attached_file 	:image, 
						:styles => { :medium => "300x300", :thumb => "100x100"} 
	# 					:storage => :s3, 
	# 					:s3_credentials => Proc.new{|a| a.instance.s3_credentials}

	# def s3_credentials 
	# 	{:bucket => ENV['S3_BUCKET_NAME'],
 #    	:access_key_id => ENV['AWS_ACCESS_KEY_ID'],
 #    	:secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']}
 #    end
end
