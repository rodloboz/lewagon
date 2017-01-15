def place_bet(total, horses)
  puts "You have #{total}€"
  puts 'Pick winning horse:'
  print '> '
  horse = gets.chomp
  puts 'Place your bet:'
  print '> '
  bet = gets.chomp.to_i
end


