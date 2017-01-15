require_relative "calculator"

puts 'Hello, welcome to My Calculator'

loop do
  puts 'Enter a first number:'
  print '>'
  first_number = gets.chomp

  break if first_number == ''

  puts 'Enter a second number:'
  print '>'
  second_number = gets.chomp.downcase

  puts 'Which operation [+][-][x][/]'
  print '>'
  operator = gets.chomp

  result = calculator(first_number.to_i, second_number.to_i, operator)
  puts "Result: #{result}"
end
