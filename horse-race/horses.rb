def race(horses)
  horses.shuffle!
  3.times do
    horses.shuffle!
    puts "Horses are racing... #{horses.first} has the lead!!"
    sleep(2)
  end
end

def get_horses(horses)
  horses = []
  loop do
    puts 'Enter the horse name:'
    print '> '
    horse = gets.chomp

    break if horse == ''
    horses << horse
  end
end

def list_horses(horses)
  horses.each { |horse| puts "- #{horse}" }
end

def pick_horse(horses)
  gets.chomp
end
