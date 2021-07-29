## input
@n = 5
@s = [1,2,3,4,5]
@q = 3
@t = [3,4,1]

@cnt = 0

def binary_search(key)
    left, right = 0, @n-1
    while left < right
        mid = (left + right) / 2
        if @s[mid] == key
            return @cnt += 1
        elsif @s[mid] < key
            left = mid + 1
        else
            right = mid
        end
    end
end

while @t != []
    key = @t.pop
    binary_search(key)
end

puts @cnt