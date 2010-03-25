class SurveyController < ApplicationController
  before_filter :has_passed_quiz, :only => :participants
  
	def intro
	end
	
	def participants
	end
end
