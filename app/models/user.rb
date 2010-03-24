class User < ActiveRecord::Base
  acts_as_authentic
  
  validates_presence_of  :email, :last_name, :first_name, :county, :referral,
                        :message => "All fields are required."
                        
  def member_status
    current_user.has_passed_quiz?
  end
  
  def admin_status
    current_user.is_admin?
  end
    
  
end
