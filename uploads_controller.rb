class UploadsController < ApplicationController
before_filter :authenticate_user!,  :except => [:upload_image] 
skip_before_action :verify_authenticity_token
	def upload_image	   
	    @func_num = params["CKEditorFuncNum"]
		@ck_editor = params["CKEditor"]		
		if params.include?(:upload)
			data = params[:upload]			
			if data.present?		
				@image = Upload.create(:image => data)	
				puts @image.image.url				
			end
		end	
		render :layout => false
			
	end
	
end
