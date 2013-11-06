require_relative 'Cards'

puts "enter the player name : "
player_name = gets.chomp
player = Cards.deal
dealer = Cards.deal

puts "#{player} are #{player_name} cards"
puts "#{dealer} are dealers cards"

puts "#{player_name} do you Hit or stop ? "
choice = gets.chomp

while 