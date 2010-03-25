class User < ActiveRecord::Base
  acts_as_authentic
  
  validates_presence_of  :email, :last_name, :first_name, :county, :referral,
                        :message => "All fields are required."


	# These do the same thing.  Use the named scope in a controller like this: @users = User.members.all
	named_scope :members, :order => "has_passed_quiz, last_name DESC"
   
	def member_list
		list = User.find(:all, :order => "has_passed_quiz, last_name DESC")
	end
	
	def admin_status
		is_admin
	end
end
