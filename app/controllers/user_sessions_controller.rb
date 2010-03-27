class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:destroy]
  
  def new
    @user_session = UserSession.new
  end
  
  def show
    redirect_to root_url
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Login successful!"
			redirect_to user_redirect_url
    else
      render :action => :new
    end
  end
  
  def redirect
    if current_user.has_passed_quiz
      redirect_to survey_participants_url 
    else
      redirect_to webinar_url
    end
  end
  
  def destroy
    current_user_session.destroy
    flash[:notice] = "Logout successful!"
    redirect_to root_url
  end
end
