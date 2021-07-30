require './hash'
require 'pp'

ht = HashTable.new
ht[0]  = :fish
ht[1]  = :chips
ht[10] = :fish_and_chips

pp ht