horses = []

puts 'Hello, welcome to the race track'

loop do
  puts 'Enter the horse name:'
  print '> '
  horses << gets.chomp

  break if horses.last == ''
end

puts horses
