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
  picked_horse = place_bet(total, horses)
  race(horses)
  say_result(horses)
end

puts '*** Goodbye! ***'
