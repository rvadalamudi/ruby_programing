class Cards
	attr_accessor :result
	def self.deal
		@result = []
		2.times {@result << rand(15)}
		@result 
	end

	def self.hit
		rand(15)
	end
end


