## input
@n = 5
@s = [1,2,3,4,5]
@q = 3
@t = [3,4,1]

def liner_search
    cnt, elm = 0, @t.pop
    @s.each do |str|
        cnt += 1 if str == elm
    end
    cnt
end
p liner_search
