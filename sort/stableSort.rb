card = ["H4", "C9", "S4", "D2", "C3"]

# Ph.1
def bubble_sort(card)
    len = card.size - 1 
    cnt = 0
    while cnt < len
        len.downto(cnt) do |i|
            if card[i][1].to_i < card[i-1][1].to_i
                tmp = card[i]
                card[i] = card[i-1]
                card[i-1] = tmp
            end
        end
        cnt += 1
    end
    card
end

# Ph.3
def selection_sort(card)
    len = card.size - 1 
    (0...len).each do |i|
        minj = i
        (i...len).each do |j|
            if card[minj][1].to_i > card[j][1].to_i
                minj = j
            end
        end
        tmp = card[i]
        card[i] = card[minj]
        card[minj] = tmp
    end
    card
end

# Ph.4
def is_stable?(card)
    bubble_sort(card) == selection_sort(card)
end

p bubble_sort(card)
puts "Stable" ## Bubble sort is always stable.
p selection_sort(card)
puts (is_stable?(card) ? "Stable" : "Not Stable")
