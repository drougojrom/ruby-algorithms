class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end

  def describe
    if !next_node.nil?
      "#{@value} -> " + "#{@next_node.describe}"
    elsif !value.nil?
      "#{@value}"
    end
  end
end
