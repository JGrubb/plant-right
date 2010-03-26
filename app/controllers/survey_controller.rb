class SurveyController < ApplicationController
  before_filter :member_status, :only => :participants
  
	def intro
	end
	
	def participants
	end
	
	def survey_download
	  send_file 'public/files/survey_materials.zip', :type => "application/zip", :x_sendfile => true, :filename => "PlantRight Survey Materials.zip"
    redirect_to participants_path
	end
	
end
