class Range
	def by(step)
		x = self.begin 
		if exclude_end? 
			while x < self.end
				yield x 
				x += step
			end
		else
			while x <= self.end 
				yield x
				x += step
			end
		end
	end
end

(1...7).step(0.5) { |x| puts x}
puts "#{Range.superclass}"