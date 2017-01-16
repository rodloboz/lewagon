def create_players(players)
  number = gets.chomp
  until /\d/.match(number) do
    puts 'You must enter a valid number of players (minimum 1):'
    print '> '
    number = gets.chomp
  end
  (1..number.to_i).each do |n|
    puts "Enter Player #{n} name:"
    print '> '
    name = gets.chomp
    players[n] = {
      name: name,
      total: 20,
      bet_amount: 0
    }
  end
  players
end

def player_winnings(roster, players)
  players.each_value do |player|
    if player.value?(roster[0])
      winnings = player[:bet_amount].to_i * calculate_winnings(6)
      puts "Contratulations, #{player[:name]}! Your horse got 1st place!"
      puts "You won #{winnings}€"
    elsif player.value?(roster[1])
      winnings = player[:bet_amount] * calculate_winnings(3)
      puts "Contratulations, #{player[:name]}! Your horse got 2nd place!"
      puts "You won #{winnings}€"
    elsif player.value?(roster[2])
      winnings = player[:bet_amount] * calculate_winnings(1)
      puts "Contratulations, #{player[:name]}! Your horse got 3rd place!"
      puts "You won #{winnings}€"
    else
      winnings = 0
      puts "Sorry, #{player[:name]}! Your horse didn\'t make the podium. You lost #{player[:bet_amount]}€!"
    end

    player[:total] += winnings
    player[:total].round(2)
  end
end

def can_bet?(players)
  players.select do |key, player|
    player[:total] < 1
  end
end

def end_result(players)
  players.each_value do |player|
    puts "#{player[:name]}, you left the race track with #{player[:total]}€"
  end
end

def broke_players(players)
broke_players = can_bet?(players)
list = []
broke_players.each_value do |player|
  list << player.values[0]
end
list.join(', ')
end

