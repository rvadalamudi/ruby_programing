def length_finder(input_array)
	result = []
	input_array.each do |x|
		result << x.length
	end
	return result 
end

array = %w[Ruby Perl C++ Unix Oracle Java]
op = length_finder(array)
puts "#{op}"