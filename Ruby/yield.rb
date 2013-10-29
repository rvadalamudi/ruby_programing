def greetings
	yield "Dharshana"
	yield "Rajeev Krishna"
end

greetings {|x| puts "Greetings #{x}"}