## input
@n = 5
@s = [1,2,3,4,5]
@q = 3
@t = [3,4,1]

@cnt = 0

def liner_search
    elm = @t.pop
    @s.each do |str|
        @cnt += 1 if str == elm
    end
end

while @t != []
    liner_search
end

puts @cnt