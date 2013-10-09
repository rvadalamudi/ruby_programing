def number_shuffle(number)
	digits = number.to_s.split("")
	no_of_digits = digits.length
	combinations = no_of_digits == 3 ? 6 : 24
	results = []
	results << digits.shuffle.join.to_i while results.uniq.length != combinations
	results.uniq.sort
end

puts "Enter a 3 or 4 digit number : "
c = Integer(gets.chomp)
op = number_shuffle(c)
puts "#{op}"