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

  puts list.describe
end

example_of("push", push_proc)

append_proc = Proc.new do
  list = LinkedList.new
  list.append(1)
  list.append(2)
  list.append(3)

  puts list.describe
end

example_of("append", append_proc)

insert_proc = Proc.new do
  list = LinkedList.new
  list.push(3)
  list.push(2)
  list.push(1)

  puts "Before inserting " + list.describe
  middle_node = list.node_at(1)
  for _ in 1..4
    middle_node = list.insert(-1, middle_node)
  end
  puts "After insert " + list.describe
end

example_of("insert", insert_proc)

pop_proc = Proc.new do
  list = LinkedList.new
  list.push(3)
  list.push(2)
  list.push(1)

  puts "Before popping list: " + list.describe
  popped_value = list.pop

  puts "After popping list: " + list.describe
  puts "Popped value: #{popped_value}"
end

example_of("pop", pop_proc)

remove_last_proc = Proc.new do
  list = LinkedList.new
  list.push(3)
  list.push(2)
  list.push(1)

  puts "Before removing last node: " + list.describe
  removed_value = list.remove_last

  puts "After removing last node: " + list.describe
  puts "Removed value: #{removed_value}"
end

example_of("remove last", remove_last_proc)

remove_after_proc = Proc.new do
  list = LinkedList.new
  list.push(3)
  list.push(2)
  list.push(1)

  puts "Before removing at particular index: " + list.describe
  index = 1
  node = list.node_at(index - 1)
  removed_value = list.remove_after(node)

  puts "After removing at index: #{index}: " + list.describe
  puts "Removed value: #{removed_value}"
end

example_of("remove after", remove_after_proc)
