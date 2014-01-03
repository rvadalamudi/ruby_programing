class Dealer
	attr_accessor :result
	def self.deal
		@result = []
		@@deck = Hash[1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,"J",10,"Q",10,"K",10,"A",11]
		@card = @@deck.keys
		2.times {@result << @card[rand(14)]}
		@result 
	end

	def self.count
		@value = []
		@value << @@deck[@result[0]]
		@value << @@deck[@result[1]]
        @value.inject {|sum,v| sum+v}
   end
end
