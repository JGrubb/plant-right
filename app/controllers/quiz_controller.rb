class QuizController < ApplicationController
	before_filter :require_user

  def index
		@questions = Quiz::questions
		@choices = Quiz::choices
  end
  
  # This is where you will process the results
  def grade
  	quiz = Quiz.new(params[:quiz])
  	quiz.grade
  	current_user.update_attribute(:has_passed_quiz, quiz.passed?)
  end
end