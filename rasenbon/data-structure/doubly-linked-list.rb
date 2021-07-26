## Create Linked List
class Node
    attr_accessor :val, :next, :prev

    def initialize(val)
        @val  = val
        @next = nil
        @prev = nil
    end
end

class LinkedList
    attr_reader :head

    def initialize(val)
        @head = Node.new(val)
    end

    def add_tail(val)
        node = search_tail(@head)
        node.next = Node.new(val)
        node.next.prev = node
    end

    def del_tail
        new_tail = search_tail(@head).prev
        new_tail.next = nil if new_tail
    end

private

    def append_list(obj, val)
        obj.next = Node.new(val)
    end

    def search_tail(node)
        return node if !node.next
        search_tail(node.next)
    end
end

list = LinkedList.new(5)
list.del_tail
list.add_tail(2)
list.add_tail(3)
list.del_tail
list.add_tail(1)
list.add_tail(6)
    puts list.head.val
    puts list.head.next.val
    puts list.head.next.next.val
