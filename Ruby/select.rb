class Array
	def select
	result = [] 
		for i in 0...size
			value = self[i]
			result << value if yield(value)
		end
		return result
	end
end

p = Array.new
z = p.select { |x| x > 2}
puts "#{z}"
