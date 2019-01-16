class Stack

  def initialize
    @storage = []
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
    return @storage.pop
  end

  private

  attr_accessor :storage
end
