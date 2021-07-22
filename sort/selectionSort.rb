class Array
    def selection_sort
        len = self.size
        (0...len).each do |i|
            minj = i
            (i...len).each do |j|
                if self[j] < self[minj]
                    minj = j
                end
            end
            tmp     = self[i]
            self[i] = self[minj]
            self[minj] = tmp
            p self
        end
    end
end

array = Array.new(10){rand(10)}
array.selection_sort
