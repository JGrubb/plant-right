class User < ActiveRecord::Base
  acts_as_authentic
  
  validates_presence_of  :email, :last_name, :first_name, :county, :referral,
                        :message => "All fields are required."

# These methods don't really do anything, what you want to do is reference the attribute directly
# so it would either be @user.has_passed_quiz or current_user.has_passed_quiz.  What this means
# is that you are directly referencing the boolan value.  No wrappers required.
#              
#   def member_status
#     current_user.has_passed_quiz?
#   end
#   
#   def admin_status
#     current_user.is_admin?
#   end
end
