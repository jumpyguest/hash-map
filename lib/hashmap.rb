require_relative 'linkedlist'

class HashMap
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
    hash_code % @buckets.size
  end

  def set(key, value)
    bucket_index = get_bucket_index(key)
    p bucket_index
    if @buckets[bucket_index].nil?
      @buckets[bucket_index] = LinkedList.new.append(key, value)
    else
      @buckets[bucket_index].append(key, value)
    end
  end

  def get(key)
    bucket_index = get_bucket_index(key)
    @buckets[bucket_index].get_value(key)
  end

  def has?(key)
    bucket_index = get_bucket_index(key)
    @buckets[bucket_index].contains?(key)
  end

  def remove(key)
    bucket_index = get_bucket_index(key)
    @buckets[bucket_index].remove(key)
  end

  def length
    @buckets.each do |list|
      list.size
    end
  end

  def clear
    @buckets.each_with_index { |_value, index| buckets[index] = nil }
  end

  def keys
    keys_str = ''
    @buckets.each { |list| keys_str += list.keys_as_string }
    keys_str.split(' ')
  end

  def values
    values_str = ''
    @buckets.each { |list| values_str += list.values_as_string }
    values_str.split(' ')
  end

  def entries
    entries = []
    @buckets.each { |list| entries << list }
  end
end
