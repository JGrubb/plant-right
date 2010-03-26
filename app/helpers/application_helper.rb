# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

	def generate_quiz(questions, choices)
		ret = ''
		questions.each do |key, question|
			ret += "<p>#{question}</p>"
			ret += '<ul class="quiz">'
			choices[key].each do |choice|
			  ret += '<li>'
				ret += radio_button_tag("quiz[#{key}]", choice) + ' ' + choice
				ret += '</li>'
			end
			ret += '</ul>'
		end
		ret
	end

  

end
