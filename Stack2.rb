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


def reverse_list(input, fresh=Stack.new)
    while input.data
        fresh.push(input.data.value)
        input.pop
    end

    return fresh
end

def print_values(entry)
    first = entry.data
    print "#{first.value} --> "
    node = first.next_node
        while node
            print "#{node.value} --> "
            node = node.next_node
        end
    print "nil\n"
end


stack1 = Stack.new
stack1.push(100)
stack1.push(200)
stack1.push(300)
stack1.push(400)

puts
print_values(stack1)
puts "-------------"
revlist = reverse_list(stack1)
print_values(revlist)
puts "Whoop Whoop!!! LOL :D "
puts