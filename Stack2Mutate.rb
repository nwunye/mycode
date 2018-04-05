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

    def push(value)
        @data = LinkedListNode.new(value, @data)
    end

    def pop
        return nil if @data.nil? # guard statement, to guard against processing @data.value when @data is "nil"
        popped_value =  @data.value
        @data = @data.next_node
        return popped_value
    end
end


def reverse_list(list)
    stack = Stack.new
    while list
        stack.push(list.value)
        list = list.next_node
    end
    return stack.data
end

def mutate_list(list, previous=nil)
    while list
        node = LinkedListNode.new(list.value, previous)
        previous = node
        list = list.next_node
    end
    return node
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

puts
puts "Reversing List With Stack"
print "Old: "
print_values(node3)
revlist = reverse_list(node3)
print "New: "
print_values(revlist)
puts "=========================="
puts "Reversing List Without Stack"
print "Old: "
print_values(node3)
mutated = mutate_list(node3)
print "New: "
print_values(mutated)