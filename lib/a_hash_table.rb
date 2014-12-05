$:.unshift File.dirname(__FILE__)
require 'a_linked_list'

class AHashTable
  # arbitrary limits used for test cases
  MINIMUM_TABLE_SIZE = 1
  MAXIMUM_TABLE_SIZE = 10

  def initialize(table_size)
    # run a sanity check to make sure table_size is valid
    if valid_size?(table_size)
      @hsh_arry = Array.new(table_size)
    end
  end

  def insert(hsh_key, hsh_val)
    index = compute_hash(hsh_key)

    # first check to see something exists at the index
    if @hsh_arry[index] == nil
      # there is nothing here, create a new linkedlist with a single node
      # containg an array of [key, val]
      a_ll = ALinkedList.new
      a_ll.add([hsh_key, hsh_val])
      @hsh_arry[index] = a_ll
    else
        # there is something here so we must add it to the linkedlist
        # with the value of the linkedlist node being an array containing
        # the key and the value
        a_ll = @hsh_arry[index]
        a_ll.add([hsh_key, hsh_val])
    end
    hsh_val
  end

  def find(hsh_key)
    index = compute_hash(hsh_key)
    return_val = nil

    if !empty?(index)
      a_ll = @hsh_arry[index]
      a_ll.each do |n|
        if n.val.first == hsh_key
          return_val = n.val.last
          break
        end
      end
    end

    return_val
  end

  def remove(hsh_key)
    index = compute_hash(hsh_key)

    if empty?(index)
      raise "Nothing to remove"
    end

    a_ll = @hsh_arry[index]
    hsh_val = find(hsh_key)
    a_ll.remove([hsh_key, hsh_val])
    hsh_val
  end

  def valid_size?(table_size)
    if (table_size < MINIMUM_TABLE_SIZE) || (table_size > MAXIMUM_TABLE_SIZE)
      raise "Table size must be more than #{MINIMUM_TABLE_SIZE} and less than" +
            " #{MAXIMUM_TABLE_SIZE}."
    end
    return true
  end

  def empty?(index)
    # determine if the index is empty
    if (@hsh_arry[index] == nil) || (@hsh_arry[index].size == 0)
      return true
    else
      return false
    end
  end

  def compute_hash(hsh_key)
    hsh_key % @hsh_arry.size
  end
end
