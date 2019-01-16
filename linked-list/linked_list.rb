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
    new_head = Node.new(value, @head)
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
  # insert(after:), also look for a helper method 
  # of retrieving node_at(index:)

  def insert(value, after_node)
    # when insert is called with the tail node
    # then it's the same as append method
    if tail == after_node
      append(value)
      return
    end

    # otherwise, you just need to link up
    # the new node with the rest of the list
    after_node.next_node = Node.new(value, after_node.next_node)
    after_node.next_node
  end

  def node_at(index)
    # create a new reference to head and keep track
    current_node = @head
    current_index = 0

    # use a while loop to move the reference down,
    # until you get the desired index
    while !current_node.nil? && current_index < index
      current_node = current_node.next_node
      current_index += 1
    end

    current_node
  end

  # MARK -- pop method
  # basically, as simple as push, but backwards
  def pop
    value = @head.value
    @head = @head.next_node
    if isEmpty?
      @tail = nil
    end
    value
  end

  # MARK -- remove_last method
  # kinda tricky one, because you can't chop the tail
  # without having a reference to the node before that
  def remove_last
    # if the head is nil, then we just return nil
    return nil if head.nil?
    # if it's only one node, thet remove_last is equal to pop
    return pop if head.next_node.nil?

    # we keep searching for the next node until
    # current.next_node is nil
    prev = @head
    current = @head

    while !current.next_node.nil?
      prev = current
      current = current.next_node
    end
    # since current.next_node is nil, we just
    # disconnect it and update the tail reference
    prev.next_node = nil
    @tail = prev
    return current.value
  end

  # MARK -- remove after some node
  # pretty sraightforward one
  def remove_after(node)
    value = node.next_node.value
    if node.next_node == tail
      @tail = node
    end
    node.next_node = node.next_node.next_node
    return value
  end

  def [](index)
    node_at(index)
  end

  def count
    return 0 if @head.nil?
    return 1 if @head.next_node.nil?

    current_node = @head
    index = 1

    while !current_node.next_node.nil?
      current_node = current_node.next_node
      index += 1
    end
    return index
  end
end
