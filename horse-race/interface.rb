
require 'yaml'

require_relative "horses"
require_relative "results"
require_relative "bet"
require_relative "sanitize"
require_relative "players"
require_relative "menu"

horses = YAML.load_file('horses.yml')
players = Hash.new { |hash, key|  hash[key] = 20.00 }

menu
puts 'How many players?'
players = create_players(players)

puts 'Play with default horses (y/n)?'
choice = sanitize_yes_no

horses = get_horses if choice == 'n'
choice == 'n' ? save = false : save = true

loop do
  puts 'This is the roster for this race:'
  list_horses(horses)
  place_bets(players, horses)
  roster = get_race_roster(horses)
  race(roster)
  say_result(roster)
  update_winners(roster,horses)
  player_winnings(roster, players)

  broke_players = broke_players(players)
  unless broke_players.empty?
    puts "#{broke_players}, you don\'t have enough money to place another bet!"
    puts 'GAME OVER!!!'
    break
  end

  puts 'Play another race (y/n)?'
  print '> '
  choice = sanitize_yes_no
  break if choice == 'n'
end

end_result(players)
File.write('horses.yml', horses.to_yaml) if save
puts '*** Goodbye! ***'
