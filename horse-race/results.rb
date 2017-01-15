def ordinal(number)
  abs_number = number.to_i.abs

  if (11..13).include?(abs_number % 100)
    "th"
  else
    case abs_number % 10
      when 1; "st"
      when 2; "nd"
      when 3; "rd"
      else    "th"
    end
  end
end

def say_result(horses)
  system 'say', 'The arrival order is:'
  puts 'The arrival order is:'
  horses.each_with_index do |horse, position|
    system 'say', "#{position + 1}#{ordinal(position + 1)} place: #{horse}"
    puts "- #{position + 1}#{ordinal(position + 1)} place: #{horse}"
  end
end
