class Array
    def insert_sort
        len = self.size
        (1...len).each do |i|
            tmp = self[i]
            j = i - 1
            while j >= 0 && self[j] > tmp
                self[j+1] = self[j]
                j -= 1
            end
            self[j+1] = tmp
            p self
        end
    end
end

array = Array.new(10){rand(10)}
p array
array.insert_sort
