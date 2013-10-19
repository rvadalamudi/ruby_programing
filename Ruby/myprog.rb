def welcome_message
	puts "enter method"
	yield("Rajeev", "Vadalamudi", "Hello")
	puts "exit method"
end

welcome_message { |fname, lname, message| puts "#{fname}, #{lname} says #{message}" }
