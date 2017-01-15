require_relative "horses"
require_relative "results"
require_relative "bet"
require_relative "sanitize"

horses = {
  'Bronco' => 0,
  'John Wayne' => 0,
  'Jack Sparrow' => 0,
  'Michael Bolton' => 0,
  'Wyatt Earp' => 0,
  'Ruby' => 0,
  'Crazy Rooster' => 0,
  'Donkey Kong' => 0
}

total = 20.00

puts '*** Hello, welcome to the race track ***'
puts '*** Enter new horses or play with the default names, ***'
puts '*** and then place your bet! ***'
puts
puts 'Play with default names (y/n)?'
choice = sanitize_yes_no

horses = get_horses if choice == 'n'

loop do
  puts 'This is the roster for this race:'
  list_horses(horses)
  puts "You have a total of #{total}€"
  puts 'Pick winning horse:'
  print '> '
  picked_horse = pick_horse(horses)
  puts 'Place your bet:'
  print '> '
  bet_amount = place_bet(total)
  total -= bet_amount.round(2)
  roster = get_race_roster(horses)
  race(roster)
  say_result(roster)
  update_winners(roster,horses)

  if picked_horse == roster[0]
    winnings = bet_amount * calculate_winnings(15)
    puts 'Contratulations! Your horse got 1st place!'
    puts "You won #{winnings}€"
  elsif picked_horse == roster[1]
    winnings = bet_amount * calculate_winnings(6)
    puts 'Contratulations! Your horse got 2nd place!'
    puts "You won #{winnings}€"
  elsif picked_horse == roster[2]
    winnings = bet_amount * calculate_winnings(2)
    puts 'Contratulations! Your horse got 3rd place!'
    puts "You won #{winnings}€"
  else
    winnings = 0
    puts "Your horse didn\'t make the podium. You lost #{bet_amount}€!"
  end

  total += winnings
  total.round(2)

  if total < 1
    puts 'You don\'t have enough money to place another bet!'
    puts 'GAME OVER!!!'
    break
  end

  puts 'Play another race (y/n)?'
  print '> '
  choice = sanitize_yes_no
  break if choice == 'n'
end

puts "You left the race track with #{total}€"
puts '*** Goodbye! ***'
