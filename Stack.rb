class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    def push(num)
        @data = LinkedListNode.new(num, @data)
    end

    def pop
        @data = @data.next_node
    end
end


def reverse_list(list)
    # add code here
    newnode1 = LinkedListNode.new(list.value)
    while list
        # add code here
        node = LinkedListNode.new(list.value, newnode1)
        list = list.next_node
    end
    # add code here
    return list
end


def print_values(list_node)
    if list_node
        print "#{list_node.value} --> "
        print_values(list_node.next_node)
    else
        print "nil\n"
    end
end


node1 = LinkedListNode.new(1)
node2 = LinkedListNode.new(2,node1)
node3 = LinkedListNode.new(3,node2)

print_values(node3)
revlist = reverse_list(node3)
print_values(revlist)