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
   
# Would love to have a list of members so I can maunally set their has_passed_quiz value manually
# since I've barely even touched the quiz.  Yes, I'm a little discouraged.
# Not sure how to corale this into a view, though. 
   def member_list
     list = User.find(:all, :order => "has_passed_quiz, last_name DESC")
    end
     
end
