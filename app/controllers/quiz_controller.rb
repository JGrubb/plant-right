class QuizController < ApplicationController
  
  before_filter :admin_status, :only => :new_question
  
  def welcome
    render(:template => 'main')
  end
  
  def question
  end
  
  def new_question
    
  end

  def result
  end

end
