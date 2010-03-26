class Quiz
	attr_accessor :score
	attr_accessor :answers
	attr_accessor :passed
	
	# Set up the Score as an Array
	def initialize(answers)
		@answers = answers
		@score = 0
		@passed = false
	end

	# Define Your Questions Here - static method so pull using Quiz::questions
	def self.questions
		{	
			0 => "Which state has the most species of invasive plants?",
			1 => "What impacts does the invasion of Hydrilla have on freshwater fish?",
			2 => "Salt cedar invades which type of habitat?",
			3 => "Most California nursery retailers sell 5 or more species of invasive plants (True or False).",
			4 => "PlantRight is working towards what type of solution to the problem of invasive plants sold in nurseries?"
		}
	end
	
	# Define Your Choices Per Question Here, maintain order - static method so pull using Quiz::choices
	def self.choices
		{	
			0 => ["California","Oregon","Hawaii","Florida", "Texas"],
			1 => ["Toxic or poisonous", "Blocks light and oxygen in waterways", "Directly competes for food and resources", "Allelopathic"],
			2 => ["Coniferous forests", "Desert", "Grassland", "River/riparian", "Chaparral"],
			3 => ["True", "False"],
			4 => ["Lawsuits", "Voluntary partnership with industry and stakeholders", "Regulatory", "Negative publicity"]
		}
	end
	
	# Define Your Correct Answers Here
	def correct_answers
		{
			0 => "California",
			1 => "Blocks light and oxygen in waterways",
			2 => "River/riparian",
			3 => "False",
			4 => "Voluntary partnership with industry and stakeholders"
		}
	end

	# Grade the quiz.
	def grade
		@answers.each {|key, value| grade_question(key, value)} if @answers
	end
	
	# Grade a single question
	def grade_question(key, value)
		@score += 1 if value == correct_answers[key.to_i]
	end
	
	# Boolean as to whether the user passed or not
	def passed?
		@passed = (@score >= 4 ? true : false)
	end
end