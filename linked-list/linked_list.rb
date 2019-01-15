class LinkedList
  attr_accessor :head, :tail

  def isEmpty?
    head.nil?
  end

  def describe
    return "Empty list" if head.nil?
    head.describe
  end

  # MARK -- push method
  # adding a value at the front of the list
  # also known as head-first insertion

  def push(value)
    new_head = Node.new(value)
    new_head.next_node = @head
    @head = new_head
    if tail.nil?
      @tail = @head
    end
  end

  # MARK -- append method
  # adding a value at the end of the list
  # tail-end insertion

  def append(value)
    # if the list is empty, you need to update head and tail. 
    # you can do via push, because in the case append == push
    if isEmpty?
      push(value)
      return
    end

    # if the list is not empty, you need to create a new Node
    # after the tail
    @tail.next_node = Node.new(value)
    # since it's a tail-end insertion, the new node is also
    # the tail of the list
    @tail = @tail.next_node
  end

  # MARK -- insert method
  # insert(after:), also look for a private helper method 
  # of retrieving node(at_index:)

  def insert(value, after_node)

  end


  private

  def node(at_index)

  end
end
