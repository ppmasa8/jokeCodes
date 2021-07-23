input = gets.chomp.chars
@operator = ["+", "-", "*"]
@stack = []

def calc(elm)
    if @operator.include?(elm)
        a, b = @stack.pop, @stack.pop
        case elm
        when "+"
            @stack << a + b
        when "-"
            @stack << b - a
        when "*"
            @stack << a * b
        end
    end
end

input.each do |elm|
    if elm =~ /[0-9]/
        @stack << elm.to_i
    end

    calc(elm)
end

while @stack.size > 1
    @stack.each do |elm|
        calc(elm)
    end
end

puts @stack