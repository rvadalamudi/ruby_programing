class Crect 
	def initialize(width,height)
		@width = width
		@height = height
	end

	def area
		return (@width * @height)
	end
end

a = Crect.new(3,4)
result = a.area
puts "#{result}"
