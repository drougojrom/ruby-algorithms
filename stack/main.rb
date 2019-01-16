require_relative '../helper'
require_relative 'stack'

example_of("using a stack", Proc.new do
  stack = Stack.new
  stack.push(1)
  stack.push(2)
  stack.push(3)
  stack.push(4)

  puts stack.describe

  popped_element = stack.pop

  puts "Popped: #{popped_element}"
end)
