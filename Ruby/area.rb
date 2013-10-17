class Crect 
    $global = "This is a global variable"
	def initialize(width,height)
		@width = width
		@height = height
	end

	def area
		puts "#{$global}"
		return (@width * @height)
	end
end

a = Crect.new(3,4)
result = a.area
puts "#{result}"
