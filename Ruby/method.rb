def modify(a)
	c = a
	c[-1] = 'e'
	return c
end

a = "Ruby"
b = "Ruby"
puts "#{a} | #{b}"
modify(a)
puts "#{a} | #{b}" 