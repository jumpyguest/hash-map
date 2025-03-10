require_relative 'node'

class LinkedList
  def initialize
    @head = nil
  end

  def append(key, value)
    node = @head
    if node.nil?
      @head = Node.new(key, value)
    else
      until node.next_node.nil?
        if node.key == key
          node.value = value
          return
        end
        node = node.next_node
      end
      node.next_node = Node.new(key, value)
    end
  end

  def remove(key)
    node = @head
    until node.next_node.key == key
      node = node.next_node
      return nil if node.next_node.nil?
    end
    temp_node = node.next_node.next_node
    remove_value = node.next_node.value
    node.next_node = temp_node
    remove_value
  end

  def contains?(key)
    node = @head
    while node
      return true if node.key == key

      node = node.next_node
    end
    false
  end

  def size
    length = 0
    node = @head
    while node
      node = node.next_node
      length += 1
    end
    length
  end

  def get_value(key)
    node = @head
    while node
      return node.value if node.key == key

      node = node.next_node
    end
    nil
  end

  def keys_as_array
    array_keys = []
    node = @head
    while node
      array_keys << node.key
      node = node.next_node
    end
    array_keys
  end

  def values_as_array
    array_values = []
    node = @head
    while node
      array_values << node.value
      node = node.next_node
    end
    array_values
  end

  def list_nodes
    bucket_array = []
    node = @head
    while node
      node_arr = "#{node.key} #{node.value}".split(' ')
      bucket_array << node_arr
      node = node.next_node
    end
    bucket_array
  end
end
