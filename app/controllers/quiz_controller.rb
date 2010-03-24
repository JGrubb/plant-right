class QuizController < ApplicationController
  
  before_filter :admin_status, :only => :new
  
  def index
    render(:template => 'quiz/main')
  end
  
  def question
  end
  
  def new
    
  end

  def result
  end

end
