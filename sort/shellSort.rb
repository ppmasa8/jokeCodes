class Array
    def insert_sort(h)
        len, i = self.size, h
        while i < len
            j = i
            while j >= h && self[j-h] > self[j]
                tmp = self[j]
                self[j] = self[j-h]
                self[j-h] = tmp
                j -= 1
            end
            i += 1
        end
    end

    def shell_sort
        h = self.size / 2
        while h > 0
            self.insert_sort(h)
            h /= 2
        end
        self
    end
end

array = Array.new(10){rand(10)}
p array
p array.shell_sort
