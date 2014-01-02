class Dealer
	attr_accessor :result
	def self.deal
		@result = []
		@@deck = [5,6,7,8,9,10]
		2.times {@result << @@deck[rand(6)]}
		@result 
	end
=begin
	def self.hit
		@result << @@deck[rand(10)]
	end

	def self.stop
		nil
	end
=end	
end
