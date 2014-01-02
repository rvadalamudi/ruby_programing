$global = "This is global variable"
class Cpoly 
	def initialize(height, width)
		@height = height
		@width = width
	end
   
    @@const = 3.14

	def RectArea
		@height * @width
	end

	def CircleArea
		@height * @width * @@const
	end

	def disp
		$global = $global + " Change"
    end
end

a = Cpoly.new(3,4)
b = Cpoly.new(5,6)
puts "#{a.RectArea}"
puts "#{a.CircleArea}"
puts "#{a.disp}"
puts "#{b.RectArea}"
puts "#{b.CircleArea}"
puts "#{b.disp}"