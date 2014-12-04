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
    @hsh_arry[compute_hash(hsh_key)] = hsh_val
    hsh_val
  end

  def find(hsh_key)
    @hsh_arry[compute_hash(hsh_key)]
  end

  def valid_size?(table_size)
    if (table_size < MINIMUM_TABLE_SIZE) || (table_size > MAXIMUM_TABLE_SIZE)
      raise "Table size must be more than #{MINIMUM_TABLE_SIZE} and less than" +
            " #{MAXIMUM_TABLE_SIZE}."
    end
    return true
  end

  def compute_hash(hsh_key)
    hsh_key % @hsh_arry.size
  end
end
