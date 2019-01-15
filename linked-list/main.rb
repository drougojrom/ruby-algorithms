require_relative 'node'

def example_of(description, action)
  puts "---Example of #{description}---"
  action.call
  puts ""
end

my_proc = Proc.new do
  node1 = Node.new(1)
  node2 = Node.new(2)
  node3 = Node.new(3)

  node1.next_node = node2
  node2.next_node = node3

  puts node1.description
end

example_of("creating nodes", my_proc)
