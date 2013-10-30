class Crect 
    $global = "This is a global variable"
	def initialize(width,height)
		@width = width
		@height = height
	end

	def area
#		puts "#{$global}"
		return (@width * @height)
	end
end
puts "enter the sides of the polygon : "
ip = gets.chomp
(a,b) = ip.split("") 
a = Crect.new(a.to_i, b.to_i)
result = a.area
puts "#{result}"
