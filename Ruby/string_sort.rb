def string_sort(string)
	result = []
	words = string.split(" ").to_a
	result = words.sort_by { |x| x.length }
	result.join(" ")
end

puts "enter a string : "
string = gets.chomp
op = string_sort(string)
puts "#{op}"