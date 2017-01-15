require_relative "horses"
require_relative "results"

horses = []

puts '*** Hello, welcome to the race track ***'
puts '*** Please enter the name of the horses ***'
puts '*** and place your bet! ***'
puts
get_horses(horses)

unless horses.empty?
  puts 'This is the roster for this race:'
  list_horses(horses)
  race(horses)
  say_result(horses)
end

puts '*** Goodbye! ***'
