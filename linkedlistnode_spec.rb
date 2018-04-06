require_relative "./linkedlistnode1and2.rb"

RSpec.describe Stack do
    it "should push and pop the same value" do
        stack = Stack.new
        stack.push(1)
        expect(stack.data).to be_a LinkedListNode
        expect(stack.pop).to eq 1
    end 
end

RSpec.describe mutate_list do
  it "should return the same object as the 'reverse_list' method" do
    node1 = LinkedListNode.new(1)
    node2 = LinkedListNode.new(2,node1)
    rev = reverse_list(node2)
    mutate = mutate_list(node2,nil)
    expect(rev).to eq mutate
  end
end

