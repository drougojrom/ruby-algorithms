require_relative 'node'

class LinkedList
  attr_accessor :head, :tail

  def isEmpty?
    head.nil?
  end

  def describe
    return "Empty list" if head.nil?
    head.describe
  end

  def push(value)
    new_head = Node.new(value)
    new_head.next_node = @head
    @head = new_head
    if tail.nil?
      @tail = @head
    end
  end
end
