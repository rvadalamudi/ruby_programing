 $Deck = Hash[1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,"J",10,"Q",10,"K",10,"A",11]
 $Cards = $Deck.keys

 class Player
 	attr_reader :player
 	def initialize(str)
 		@player = Hash[:name,str,:status,0,:cards,[],:value,0,:bet,0,:tot_bet,0] #status 0 = Normal, 1 = Busted , 2 = BlackJack
 	end

    def deal
    	2.times {@player[:cards] << $Cards[rand(14)]}
    		@player[:cards]
    end

    def count
        @values = [] 
    	no_of_cards = @player[:cards].length
    	i = 0
    	while i < no_of_cards
    		@values << $Deck[@player[:cards][i]]
    		i += 1
    	end
    	@player[:value] = @values.inject {|sum,v| sum+v}
    end

    def hit
    	@player[:cards] << $Cards[rand(14)]
    end

    def stop 
    	nil
    end
end

class Dealer < Player
end
