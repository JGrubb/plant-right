class SurveyController < ApplicationController
  before_filter :member_status, :only => :participants
  
	def intro
	end
	
	def participants
	end

	
end
