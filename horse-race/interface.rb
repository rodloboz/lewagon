require_relative "horses"
require_relative "results"
require_relative "bet"
require_relative "sanitize"
require_relative "players"

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

players = Hash.new { |hash, key|  hash[key] = 20.00 }

puts '*** Hello, welcome to the race track ***'
puts '*** Enter new horses or play with the default names, ***'
puts '*** and then place your bet! ***'
puts
puts 'How many players?'
players = create_players(players)

puts 'Play with default horses (y/n)?'
choice = sanitize_yes_no

horses = get_horses if choice == 'n'

loop do
  puts 'This is the roster for this race:'
  list_horses(horses)
  place_bets(players, horses)
  roster = get_race_roster(horses)
  race(roster)
  say_result(roster)
  update_winners(roster,horses)
  player_winnings(roster, players)

  unless can_bet?(players).empty?
    puts 'You don\'t have enough money to place another bet!'
    puts 'GAME OVER!!!'
    break
  end

  puts 'Play another race (y/n)?'
  print '> '
  choice = sanitize_yes_no
  break if choice == 'n'
end

end_result(players)
puts '*** Goodbye! ***'
