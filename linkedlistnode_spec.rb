require_relative "./linkedlistnode1and2.rb"

# RSpec.describe Stack do
#     it "should push and pop the same value" do
#         stack = Stack.new
#         stack.push(1)
#         expect(stack.data).to be_a LinkedListNode
#         expect(stack.pop).to eq 1
#     end 
# end

# RSpec.describe 'mutate_list' do
#   it "should return the first value loaded in the node" do
#     node1 = LinkedListNode.new(1)
#     node2 = LinkedListNode.new(2,node1)
#     rev = reverse_list(node2)
#     expect(rev.value).to eq 1
#     # expect(rev.next_node.value).to eq 2
#     # expect(rev.next_node.next_node).to eq nil
#   end
# end

RSpec.describe 'mutate_list' do
  it "should return the expected values" do
    node1 = LinkedListNode.new(1)
    node2 = LinkedListNode.new(2,node1)
    rev = reverse_list(node2)
    mutate = mutate_list(node2)
    expect(rev.value).to eq mutate.value
  end
end

 
