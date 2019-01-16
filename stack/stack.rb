class Stack

  def initialize(array = [])
    @storage = array
  end

  def describe
    top_divider = "----top----\n"
    bottom_divider = "\n-----------"

    stack_elements = @storage.map { |item| "#{item}" }.reverse.join("\n")
    top_divider + stack_elements + bottom_divider
  end

  def push(element)
    @storage.append(element)
  end

  def pop
    @storage.pop
  end

  def peek
    @storage.last
  end

  def isEmpty?
    peek.nil?
  end

  private

  attr_accessor :storage
end
