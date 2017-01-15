def place_bet(total)
  bet = gets.chomp
  until bet.to_i <= total do
    puts 'You don\'t have enough money to place that bet!'
    puts "You have #{total}€. Place your bet:"
    print '> '
    bet = gets.chomp
  end
  until /\d/.match(bet) do
    puts 'You must enter a whole number (minimum 1):'
    print '> '
    bet = gets.chomp
  end
  bet.to_i
end

def calculate_winnings(factor)
  winnings = '%.2f' % (factor * rand(1.0..5).round(2))
  winnings.to_f
end

def place_bets(players, horses)
  players.each_value do |player|
    puts "#{player[:name]}, you have a total of #{player[:total]}€"
    puts 'Pick your winning horse:'
    print '> '
    player[:picked_horse] = pick_horse(horses)
    puts 'Place your bet:'
    print '> '
    player[:bet_amount] = place_bet(player[:total])
    player[:total] -= player[:bet_amount].round(2)
  end
end
