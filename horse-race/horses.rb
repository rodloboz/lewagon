def race(horses)
  horses.shuffle!
end

def get_horses(horses)
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
