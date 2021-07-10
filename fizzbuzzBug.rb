def caesar(msg)
  num = Random.rand(26)
  crypt = []
  msg.each_char do |str|
    crypt << (((str.ord - 97) - num) % 26 + 97).chr
  end
  return crypt.join
end

100.times do |i|
  msg = []
  msg << "fizz" if i%3==0
  msg << "buzz" if i%5==0
  if msg != []
    msg = msg.join
    puts "#{msg}は#{caesar(msg)}に変換されました。" 
  end
end
