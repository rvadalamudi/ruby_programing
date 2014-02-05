require_relative 'player'

puts "enter the number of players : "
no_of_players = Integer(gets.chomp)
p = []

if no_of_players <= 0
	puts "Enter a valid number"	
else
for i in (0..no_of_players-1) do
    puts "enter #{i+1}th player name" 
	p[i] = Player.new(gets.chomp)
end

puts "Dealing cards to players..."
for i in (0..no_of_players-1)
	p[i].deal
	puts "#{p[i].player[:name]} has cards #{p[i].player[:cards]}" 
	if p[i].player[:cards].include? "A"
		p[i].player[:ace] = 1
		if p[i].count == 21
			p[i].player[:status] = 2
		else
			nil
		end
	else
		nil
	end
end

d = Dealer.new("dealer")
d.deal 

puts "#{d.player[:name]} 1st card is #{d.player[:cards][0]}"

for i in (0..no_of_players-1) do 
	p[i].count
#	puts "#{p[i].player[:name]} count is #{p[i].player[:value]}"
end
no_of_players_busted = 0


# Code for Hit or Stop and checks weather count >= 21
for i in (0..no_of_players-1) do 
	while p[i].player[:value] < 21
			puts "#{p[i].player[:name]} do you want to Hit or Stand. Enter 1 for Hit and 2 to Stand"
			choice = Integer(gets.chomp)

	    if choice == 1
		    p[i].hit 
		    puts "#{p[i].player[:name]} cards are #{p[i].player[:cards]} cards"
		    if p[i].player[:cards].include? "A"
		       p[i].player[:ace] += 1
	        else
		       nil
	        end
            p[i].count
            if p[i].player[:value] == 21
            	p[i].player[:status] = 2
            elsif p[i].player[:value] > 21 && p[i].player[:ace] == 0
            	p[i].player[:status] = 1
            	no_of_players_busted += 1 
            elsif p[i].player[:value] > 21 && p[i].player[:ace] >= 1
            	p[i].player[:value] -= 10
            	p[i].player[:ace] -= 1
            else
            	nil
            end 		
	    else 
		    break
	    end
	end
end

d.count
while  d.player[:value] < 17 
	#&& no_of_players_busted < no_of_players
	d.hit
	d.count 
end

# The following code checks the various sceniors and decides who's the winner 

for i in (0..no_of_players-1) do 
	if p[i].player[:status] == 1 
		puts "#{p[i].player[:name]} is Busted!!! Dealer Wins!!!! #{p[i].player[:value]}"
	elsif p[i].player[:status] == 2
		puts "#{p[i].player[:name]} hits a BlackJack. Congratulations!!!! #{p[i].player[:value]}"
	elsif p[i].player[:value] > d.player[:value]
		puts "#{p[i].player[:name]} wins!!!! #{p[i].player[:value]}"
	elsif p[i].player[:value] == d.player[:value]
		puts "Its a Tie!!! #{p[i].player[:value]}"
	elsif p[i].player[:value] == d.player[:value] && p[i].player[:value] > 21
			puts "Dealer wins as both get Busted"
	elsif d.player[:value] > 21 
		puts "Dealer Busted!!! #{p[i].player[:name]} wins #{p[i].player[:value]}"
	elsif d.player[:value] == 21
		puts "Dealer hits BlackJack. #{p[i].player[:name]} looses. #{p[i].player[:value]}"		
	else
		puts "Dealer Wins. #{p[i].player[:name]} looses. #{p[i].player[:value]}"
	end
end

puts "Dealer cards are #{d.player[:cards]}"

end			
			