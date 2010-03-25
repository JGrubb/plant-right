class QuizController < ApplicationController 
  def index
		@questions = Quiz::questions
		@choices = Quiz::choices
  end
  
  # This is where you will process the results
  def grade
  	quiz = Quiz.new
  	quiz.grade(['array','of','answers'])
  	quiz.passed?
  end
end