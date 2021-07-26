class Node
    attr_accessor :data, :next

    def initialize(data, next_node = nil)
        @node = data
        @next = next_node
    end
end

class LinkedList

    def is_empty?
        return @head == nil
    end

    def push(data)
        if self.is_empty?
            @head = Node.new(data)
        else
            current_node = @head
            new_node = Node.new(data)
            until current_node.next.nil?
                current_node = current_node.next
            end
            current_node.next = new_node
        end
    end

    def unshift(data)
        if self.is_empty?
            @head = Node.new(data)
        else
            curr_head = Node.new(data)
            curr_head.next = @head
            @head = curr_head
        end
    end

    def pop
        if self.is_empty?
            return "this list is currently empty"
        else
            current_node = @head
            until current_node.next.next.nil?
                current_node = current_node.next
            end
            last_node = current_node.next
            current_node.next = nil
        end
        last_node
    end

    def shift
        if self.is_empty?
            return "this list is currently empty"
        else
            curr_head = @head
            new_head = @head.next
            @head.next = nil
            @head = new_head
        end
        curr_head
    end

    def size
        if self.is_empty?
            count = 0
        else
            count = 1
            current_node = @head
            until current_node.next.nil?
                current_node = current_node.next
                count += 1
            end
        end
        count
    end

    def pretty_print
        array = []
        current_node = @head
        if self.is_empty?
            return array
        else
            until current_node.next.nil?
                array << current_node.data.to_i
                current_node = current_node.next
            end
            array << current_node.data.to_i
        end
        array
    end

    def clear
        @head = nil
    end
end

list = LinkedList.new
p list.push(1)
p list.push(2)
p list.unshift(0)
p list.pretty_print