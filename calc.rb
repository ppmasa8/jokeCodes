input = gets.chomp.split(" ")

operator  = ['+', '-', '*', '/']
num_stack = []

input.each do |str|
  if str =~ /[0-9]/
    num_stack << str
  end

  if operator.include?(str)
    a, b = num_stack.pop, num_stack.pop
    a, b = a.to_i, b.to_i
    case str
    when '+'
      num_stack << b + a
    when '-'
      num_stack << b - a
    when '*'
      num_stack << b * a
    when '/'
      num_stack << b / a
    end
  end
end

ans = num_stack.pop
puts ans

