class Cpoly
	attr_accessor :width , :height
	def initialize(width, height)
		@width = width
		@height = height
	end

	def area
		@width * @height
	end

end

puts "enter the sides of the poly : "
arr = gets.chomp
(a,b) = arr.split("")
triangle = Cpoly.new(a.to_i, b.to_i)
puts "#{triangle.area}"

#triangle.height = 7
#puts "#{triangle.width} * #{triangle.height} = #{triangle.area}"
