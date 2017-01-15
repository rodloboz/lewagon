def place_bet
  bet = gets.chomp
  until /\d/.match(bet) do
    puts 'You must enter a whole number (minimum 1):'
    print '> '
    bet = gets.chomp
  end
  bet.to_i
end

def calculate_winnings
  rand(0..2.5).round(2)
end



