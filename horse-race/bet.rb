def place_bet
  gets.chomp.to_i
end

def calculate_winnings(bet_amount)
  bet_amount + rand(0..2.5).round(2)
end



