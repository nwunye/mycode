require_relative "./Stack.rb"

RSpec.describe Stack do
    it "should push and pop the same value" do
        stack = Stack.new
        stack.push(1)
        expect(stack.data).to be_a LinkedListNode
        expect(stack.pop).to eq 1
    end 
end

