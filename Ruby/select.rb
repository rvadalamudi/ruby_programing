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

p = Array.new(5) { |index| index * 2}
z = p.select { |x| x > 4}
puts "#{z}"

#y = [1,2,3,4].select {|x| x >= 20}
#puts "#{y}"
