class Player
	attr_accessor :result
	def self.deal
		@result = []
		@@deck = [1,2,3,4,5,6,7,8,9,10]
		2.times {@result << @@deck[rand(10)]}
		@result 
	end

	def self.hit
		@result << @@deck[rand(10)]
	end

	def self.stop
		nil
	end
end


