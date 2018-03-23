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
        @data.value
        @data = @data.next_node
    end

end


stack = Stack.new
stack.push(100)
stack.push(200)
stack.push(300)
stack.push(400)

puts stack.data.value # gives the top value in the stack

stack.pop # gets rid of the top value in the stack
# don't know how to define "pop" so that when I "puts" it, it gives the popped-off value

puts stack.data.value

stack.push(500)

puts stack.data.value







