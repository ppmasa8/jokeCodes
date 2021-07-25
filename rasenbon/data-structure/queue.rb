## input 
N,Q  = gets.split.map &:to_i
P1 = gets.chomp
P2 = gets.chomp
P3 = gets.chomp
P4 = gets.chomp
P5 = gets.chomp

cnt = 0
queue = []
queue << P1 << P2 << P3 << P4 << P5

while queue != []
    elm = queue.shift
    num = elm[/\W[0-9]+/][1..-1].to_i
    if num - Q > 0
        queue << elm[0..1] + " #{num - Q}"
        cnt += Q
    else
        cnt += num
        elm = elm[0..1] + " #{cnt}"
        puts "--------------------"
        puts elm
    end
end
