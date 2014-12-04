$:.unshift File.dirname(__FILE__)

require_relative "../lib/a_hash_table"
require "test/unit"

class AHashTableTest < Test::Unit::TestCase
  def test_setup_of_hash_table
    tbl_size = 5
    assert_nothing_raised do
      hsh_table = AHashTable.new(tbl_size)
    end
  end

  def test_insert
    key = 3
    val = 1899
    tbl_size = 10
    hsh_table = AHashTable.new(tbl_size)
    hsh_table.insert(key, val)
    assert_equal val, hsh_table.find(key)
  end

  def test_valid_size
    tbl_size = 4
    hsh_tbl = AHashTable.new(tbl_size)
    assert_equal true, hsh_tbl.valid_size?(tbl_size), "Table size was not withing range"
  end

  def test_valid_size_out_of_bounds
    # above maximum table size
    tbl_size = AHashTable::MAXIMUM_TABLE_SIZE + 3
    assert_raise RuntimeError do
      hsh_tbl = AHashTable.new(tbl_size)
      hsh_tbl.valid_size?(tbl_size)
    end

    # below minimum table size
    tbl_size = AHashTable::MINIMUM_TABLE_SIZE - 2
    assert_raise RuntimeError do
      hsh_tbl = AHashTable.new(tbl_size)
      hsh_tbl.valid_size?(tbl_size)
    end
  end

  def test_compute_hash
    tbl_size = 5
    hsh_key = 10
    hsh_table = AHashTable.new(tbl_size)
    assert_equal (hsh_key % tbl_size), hsh_table.compute_hash(hsh_key)
  end
end
