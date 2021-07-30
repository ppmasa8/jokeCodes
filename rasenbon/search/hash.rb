class HashTable
    class Bucket
        attr_reader :key, :value, :next_cell

        def initialize(key, value, next_cell = nil)
            @key       = key
            @value     = value
            @next_cell = next_cell
        end
    end

    TABLE_SIZE = 10

    def initialize
        @table = Array.new(TABLE_SIZE)
    end

    def []=(key, value)
        raise 'すでに存在するキーです' unless self[key].nil?

        hash_key = hash(key)
        cell = Bucket.new(key, value, @table[hash_key])
        @table[hash_key] = cell
    end

    def [](key)
        hash_key = hash(key)
        cell = @table[hash_key]
        while cell
            return cell.value if cell.key == key
            cell = cell.next_cell
        end
    end

    private
    def hash(key)
        return key % TABLE_SIZE
    end
end