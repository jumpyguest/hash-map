require_relative 'lib/hashmap'

# test = HashMap.new(0.75, 16)

# test.set('apple', 'red')
# test.set('banana', 'yellow')
# p test.entries

list = LinkedList.new
list.append('apple', 'red')
list.append('banana', 'yellow')
# p list.list_nodes
p list.values_as_array
p list.keys_as_array
p list.get_value('apple')
p list.size
p list.contains?('app')
list.remove('apple')
p list.list_nodes
