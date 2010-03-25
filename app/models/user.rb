class User < ActiveRecord::Base
  acts_as_authentic
  
  validates_presence_of  :email, :last_name, :first_name, :county, :referral,
                        :message => "All fields are required."

#  I've tried it all.  self.has_passed_quiz User.has_passed_quiz @user.has_passed_quiz
#  and all I get is the same "undefined method error"
#              
   def member_status
     @user.has_passed_quiz
   end
  
   def admin_status
     @user.is_admin
   end
   
   def has_passed_quiz
     @user.has_passed_quiz
   end
   
   def member_list
     list = User.find(:all, :order => "has_passed_quiz, last_name DESC")
    end
     
end
