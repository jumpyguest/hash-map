class Node
  attr_accessor :next_node, :key, :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
    @next_node = nil
  end
end
