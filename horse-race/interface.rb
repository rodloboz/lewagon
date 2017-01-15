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

unless horses.empty?
  puts 'This is the roster for this race:'
  list_horses(horses)
  puts "You have a total of #{total}€"
  puts 'Pick winning horse:'
  print '> '
  picked_horse = pick_horse(horses)
  puts 'Place your bet:'
  print '> '
  bet_amount = place_bet
  race(horses)
  say_result(horses)

  if picked_horse == horses[0]
    puts 'Contratulations! Your horse got 1st place!'
    puts "You won"
  elsif picked_horse == horses[1]
    puts 'Contratulations! Your horse got 2nd place!'
    puts "You won"
  elsif picked_horse == horses[2]
    puts 'Contratulations! Your horse got 3rd place!'
    puts "You won"
  else puts 'Your horse didn\' make the podium. You lost!'
  end
end

puts '*** Goodbye! ***'
