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
  winnings = '%.2f' % (factor * rand(0.01..1).round(2))
  winnings.to_f
end



20

