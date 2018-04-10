class Upload < ActiveRecord::Base	
	has_attached_file :image,
		:path => ":rails_root/public/upload/:id/:style/:basename.:extension",
		:url => "/upload/:id/:style/:basename.:extension",		
		:styles => {:thumbnail => "225*80", :thumb => "50*50"}
	validates_attachment_content_type :image, :content_type => /^image\/(jpg|jpeg|gif|pjpeg|png|x-png)$/, :message => 'file type is not allowed (only jpeg/png images)'
	
	
end
