def calculator (first_number, second_number, operator)
  case operator
  when '+'
    first_number + second_number
  when '-'
    first_number - second_number
  when 'x'
    first_number * second_number
  when '/'
    first_number.to_f / second_number
  end
end
