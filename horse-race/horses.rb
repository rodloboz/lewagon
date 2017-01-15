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
  loop do
    puts 'Enter horse name:'
    print '> '
    horse = gets.chomp

    break if horse == ''
    horses[horse] = 0
  end
  horses
end

def list_horses(horses)
  horses.each { |horse, wins| puts "- #{horse}, has #{wins} win(s)" }
end

def pick_horse(horses)
  gets.chomp
end

def get_race_roster(horses)
  horses.keys
end

def update_winners(roster, horses)
  horses[roster.first] += 1
end
