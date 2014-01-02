class Sequence 
	def initialize(from,to,by)
		@from,@to,@by = from,to,by
	end

	def each
		x = @from
		while x <= @to
			yield x 
			x += @by
		end
	end

	def [](n) 
		v = @from + n * @by 
		if v <= @to
			return v
		else nil
		end
	end

	def length
		if @from > @to
			return 0
		else
			Integer((@to-@from)/@by) + 1 
		end
	end
end

s = Sequence.new(1,9,1)
s.each {|x| print x}
print s[s.length - 5]
