require 'benchmark'
result = Benchmark.realtime do
    arr = (1..10000).to_a.combination(2).to_a
    puts arr
end
puts "実行時間 #{result}s"