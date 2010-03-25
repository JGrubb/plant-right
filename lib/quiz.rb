class Quiz
	# Accesible value for the array of scores
	attr_accessor :scores
	# Accesible value for the final score
	attr_accessor :score
	
	# Set up the Score as an Array
	def initialize
		@scores = Array.new
		@score = 0
	end

	# Define Your Questions Here - static method so pull using Quiz::questions
	def self.questions
		{	
			0 => "How much for that doggy in the window?",
			1 => "Why do birds suddenly appear?"
		}
	end
	
	# Define Your Choices Per Question Here, maintain order - static method so pull using Quiz::choices
	def self.choices
		{	
			0 => ["$10","$20","$100","Free"],
			1 => ["I smell like Teen Spirit", "I Have Breadcrumbs", "I just smell good"]
		}
	end
	
	# Define Your Correct Answers Here
	def correct_answers
		{
			0 => "$20",
			1 => "I just smell good"
		}
	end

	# Grade the quiz.  Pass in an array of the user's answers in order
	def grade(answers_array)
		answers_array.each {|key, value| grade_question(key, value)}
	end
	
	# Boolean as to whether the user passed or not
	def passed?
		calculate_score >= 2 ? true : false
	end

	# Add all of the values together
	def calculate_score
		@scores.each {|v| @score += v}
		@score
	end
	
	# Grade a single question
	def grade_question(key, value)
		@scores << 1 if value == answer(key)
	end
	
	# Pull a single answer
	def answer(key)
		correct_answers[key]
	end
end