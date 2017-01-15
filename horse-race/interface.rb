require_relative "horses"
require_relative "results"
require_relative "bet"

horses = []
total = 20.00

puts '*** Hello, welcome to the race track ***'
puts '*** Please enter the name of the horses ***'
puts '*** and place your bet! ***'
puts
get_horses(horses)

loop do
  puts 'This is the roster for this race:'
  list_horses(horses)
  puts "You have a total of #{total}€"
  puts 'Pick winning horse:'
  print '> '
  picked_horse = pick_horse(horses)
  puts 'Place your bet:'
  print '> '
  bet_amount = place_bet
  total -= bet_amount.round(2)
  race(horses)
  say_result(horses)

  if picked_horse == horses[0]
    bet_amount += calculate_winnings + 5
    puts 'Contratulations! Your horse got 1st place!'
    puts "You won #{bet_amount}€"
  elsif picked_horse == horses[1]
    bet_amount += calculate_winnings + 2
    puts 'Contratulations! Your horse got 2nd place!'
    puts "You won #{bet_amount}€"
  elsif picked_horse == horses[2]
    bet_amount += calculate_winnings + 0.5
    puts 'Contratulations! Your horse got 3rd place!'
    puts "You won #{bet_amount}€"
  else
    bet_amount = 0
    puts 'Your horse didn\'t make the podium. You lost!'
  end

  total += bet_amount.round(2)

  puts 'Play another race (y/n)?'
  print '> '
  choice = gets.chomp.downcase
  break if choice == 'n'
end

puts '*** Goodbye! ***'
