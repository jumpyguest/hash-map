# hash-map

The HashMap class stores key-value pairs into specific buckets based on hash code generated.
This also has the capability of growing the buckets size and rehashing as the number of entries become
greater than the load factor * capacity of the HashMap.

This repository contains solutions for the HashMap project.
1. Implementation of the HashMap class and required methods.
2. Implemenation of LinkedList class and methods.
3. Implementation of Node class.

## Classes

### HashMap
Class that represents the full hash map.
```ruby
class HashMap
  def initialize(load_factor, capacity)
    @load_factor = load_factor
    @capacity = capacity
    @buckets = Array.new(capacity, nil)
  end
...
```

**Methods**
- **#hash(key)** - takes a key and produces a hash code with it.
- **#get_bucket_index(key)** - gets the bucket index of the key-value pair based on input key.
- **#set(key, value)** - takes two arguments, the first is a key and the second is a value that is assigned to this key. 
                         If a key already exists, then the old value is overwritten.
- **rehash** - creates a new array of buckets double the size of the previous buckets and moves the key-value entries here.
- **get(key)** - takes one argument as a key and returns the value that is assigned to this key. If key is not found, return nil.
- **#has?(key)** - takes a key as an argument and returns true or false based on whether or not the key is in the hash map.
- **#remove(key)** - takes a key as an argument. If the given key is in the hash map, it removes the entry with that key and 
                     return the deleted entry’s value. If the key isn’t in the hash map, it returns nil.
- **#length** - returns the number of stored keys in the hash map.
- **#clear** - removes all entries in the hash map.
- **#keys** - returns an array containing all the keys inside the hash map.
- **#values** - returns an array containing all the values.
- **#entries** - returns an array that contains each key, value pair.


### LinkedList
Class that represents each bucket.
```ruby
class LinkedList
  def initialize
    @head = nil
  end
...
```

**Methods**
- **append(key, value)** - appends a new entry to the linked list or overwrites if key is existing.
- **remove(key)** - removes entry with the specified key. Returns value of removed entry. Returns nil if not found.
- **contains?(key)** - returns *true* if linked list contains key and *false* if not found.
- **size** - returns the number of entries in the linked list.
- **get_value(key)** - retrieves the value in the entry based on the input key.
- **keys_as_array** - retrieves all keys in the linked list as an array.
- **values_as_array** - retrieves all values in the linked list as an array.
- **list_nodes** - retrieves all key-value pairs in the linked list as an array.

### Node
Class that represents a node in the linked list.
```ruby
class Node
  attr_accessor :next_node, :key, :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
    @next_node = nil
  end
end
...
```

**Methods**
None

## Files
- **hashmap.rb** - Contains implementation of the HashMap class.
- **linked_list.rb** - Contains implementation of the LinkedList class.
- **node.rb** - Contains the implementation of the Node class.
- **main.rb** - Test file for the hasn map.