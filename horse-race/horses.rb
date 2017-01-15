def race(roster)
  roster.shuffle!
  3.times do
    roster.shuffle!
    puts "Horses are racing... #{roster.first} has the lead!!"
    sleep(2)
  end
end

def get_horses
  horses = {}
  number_of_horses = 0
  loop do
    puts 'Enter horse name:'
    print '> '
    horse = gets.chomp

    if horse == '' && number_of_horses < 6
      puts 'You must have at least 6 horses'
      puts "Please enter #{6 - number_of_horses} more horse(s)"
      redo
    elsif horse == '' && number_of_horses >= 6
      break
    end
    horses[horse] = 0
    number_of_horses += 1
  end
  horses
end

def list_horses(horses)
  horses.each { |horse, wins| puts "- #{horse}, has #{wins} win(s)" }
end

def pick_horse(horses)
  horse = gets.chomp
  until horses.key?(horse) do
    puts 'I don\'t know that horse! Please pick a valid horse!'
    print '> '
    horse = gets.chomp
  end
  horse
end

def get_race_roster(horses)
  horses.keys
end

def update_winners(roster, horses)
  horses[roster.first] += 1
end
