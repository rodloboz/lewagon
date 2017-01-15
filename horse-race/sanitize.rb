def sanitize_yes_no
  choice = gets.chomp.downcase
  until /y|n/.match(choice) do
    puts 'Please enter (y) or (n):'
    print '> '
    choice = gets.chomp.downcase
  end
  choice
end
