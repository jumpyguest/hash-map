require_relative 'lib/hashmap'

test = HashMap.new(0.75, 16)

# test.set('apple', 'red')
# test.set('banana', 'yellow')
# # p test.entries
# p test.values
# p test.keys
# # test.clear
# # p test.entries
# # p test.length
# p test.has?('banan')
# p test.get('')

# list = LinkedList.new
# list.append('apple', 'red')
# list.append('banana', 'yellow')
# p list.list_nodes
# p list.values_as_array
# p list.keys_as_array
# p list.get_value('apple')
# p list.size
# p list.contains?('app')
# list.remove('apple')
# p list.list_nodes
# list.remove('banana')
# p list.list_nodes

test.set('apple', 'red')
test.set('banana', 'yellow')
test.set('carrot', 'orange')
test.set('dog', 'brown')
test.set('elephant', 'gray')
test.set('frog', 'green')
test.set('grape', 'purple')
test.set('hat', 'black')
test.set('ice cream', 'white')
test.set('jacket', 'blue')
test.set('kite', 'pink')
test.set('lion', 'golden')

p test.entries
p test.load_factor
