require_relative 'node'
require_relative 'linked_list'
require_relative 'helper'

nodes_proc = Proc.new do
  node1 = Node.new(1)
  node2 = Node.new(2)
  node3 = Node.new(3)

  node1.next_node = node2
  node2.next_node = node3

  puts node1.describe
end

example_of("creating nodes", nodes_proc)

push_proc = Proc.new do
  list = LinkedList.new
  list.push(3)
  list.push(2)
  list.push(1)

  list.describe
end

example_of("push", push_proc)
