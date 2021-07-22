class Array
    def bubble_sort
        cnt ,len = 0, self.size - 1
        while cnt < len
            len.downto(cnt) do |i|
                if self[i] < self[i-1]
                    tmp       = self[i]
                    self[i]   = self[i-1]
                    self[i-1] = tmp
                end
            end
            cnt += 1
        end
        p self
    end
end

array = Array.new(10){rand(10)}
p array
array.bubble_sort
