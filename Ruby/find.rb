class Array
	def find
		for i in 0...size
			value = self[i]
			return value if yield(value)
		end
			return (nil)
	end
end

y = [1,2,3,4,5].find { |x| x*x > 30}
puts "#{y}"