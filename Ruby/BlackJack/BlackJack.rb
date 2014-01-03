require_relative 'Player'
require_relative 'Dealer'

puts "enter the player name : "
player_name = gets.chomp
player = Player.deal
dealer = Dealer.deal

puts "#{player} are #{player_name} cards"
puts "#{dealer[0]} is dealers 1st card"

dealer_count = Dealer.count
player_count = Player.count

while player_count < 21 
puts "#{player_name} do you wanna Hit or Stop ?"
puts "Enter 1 for Hit and 2 for Stop "
choice = Integer(gets.chomp)

if choice == 1
		player = Player.hit
		puts "#{player} are #{player_name} cards"
 #       puts "#{dealer} are dealers cards"
        player_count = Player.count
        dealer_count = Dealer.count
	else 
		break
	end
end

if player_count > 21
	puts "Busted!!! Dealer wins"
	puts "#{player_name} count is #{player_count}"
	puts "Dealer count is #{dealer_count}"
elsif player_count == 21
	puts "#{player_name} wins. BlackJack!!!"
	puts "#{player_name} count is #{player_count}"
	puts "Dealer count is #{dealer_count}"
elsif player_count < 21 && player_count > dealer_count
	puts "#{player_name} wins. Kudos!!!"
	puts "#{player_name} count is #{player_count}"
	puts "Dealer count is #{dealer_count}"
elsif player_count == dealer_count
	puts "Its a Tie!!!"
	puts "#{player_name} count is #{player_count}"
	puts "Dealer count is #{dealer_count}"		
elsif dealer_count > 21
	puts "Dealer Busted!!! #{player_name} wins"
	puts "#{player_name} count is #{player_count}"
	puts "Dealer count is #{dealer_count}"	
else
	puts "Dealer wins"
	puts "#{player_name} count is #{player_count}"
	puts "Dealer count is #{dealer_count}"
end
		
