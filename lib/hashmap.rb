require_relative 'linkedlist'

class HashMap
  attr_reader :load_factor, :capacity

  def initialize(load_factor, capacity)
    @load_factor = load_factor
    @capacity = capacity
    @buckets = Array.new(capacity, nil)
  end

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }
    hash_code
  end

  def get_bucket_index(key)
    hash_code = hash(key)
    index = hash_code % @buckets.size
    raise IndexError if index.negative? || index >= @buckets.length

    index
  end

  def set(key, value)
    bucket_index = get_bucket_index(key)
    p bucket_index
    @buckets[bucket_index] = LinkedList.new if @buckets[bucket_index].nil?
    @buckets[bucket_index].append(key, value)
  end

  def get(key)
    bucket_index = get_bucket_index(key)
    return nil if @buckets[bucket_index].nil?

    @buckets[bucket_index].get_value(key)
  end

  def has?(key)
    bucket_index = get_bucket_index(key)
    return false if @buckets[bucket_index].nil?

    @buckets[bucket_index].contains?(key)
  end

  def remove(key)
    bucket_index = get_bucket_index(key)
    @buckets[bucket_index].remove(key)
  end

  def length
    hashmap_length = 0
    @buckets.each do |list|
      hashmap_length += list.size unless list.nil?
    end
    hashmap_length
  end

  def clear
    @buckets.each_with_index { |_value, index| @buckets[index] = nil }
  end

  def keys
    keys_array = []
    @buckets.each { |list| keys_array << list.keys_as_array unless list.nil? }
    keys_array.flatten
  end

  def values
    values_array = []
    @buckets.each { |list| values_array << list.values_as_array unless list.nil? }
    values_array.flatten
  end

  def entries
    entries = []
    @buckets.each { |list| entries << list.list_nodes unless list.nil? }
    entries.flatten(1)
  end
end
