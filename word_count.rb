def word_count(sentence)
	result = Hash.new(0)
	words = sentence.split(" ")
	words.each { |x| result[x.downcase] += 1}
	return result
end

puts "enter a sentence : "
sentence = gets.chomp
op = word_count(sentence)
puts "#{op}"
