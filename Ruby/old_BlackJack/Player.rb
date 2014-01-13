class Player
	attr_accessor :result
	def self.deal
		@result = []
		@@deck = Hash[1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,"J",10,"Q",10,"K",10,"A",11]
		@card = @@deck.keys
		2.times {@result << @card[rand(14)]}
		@result 
	end

	def self.hit
		@result << @card[rand(14)]
	end

	def self.stop
		nil
	end

	def self.count
		@value = []
		no_of_cards = @result.length
        i  = 0
		while i < no_of_cards
			@value << @@deck[@result[i]]
			i+=1
		end
		@value.inject {|sum,v| sum+v}
	end

end


