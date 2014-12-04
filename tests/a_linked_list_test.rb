$:.unshift File.dirname(__FILE__)

require_relative "../lib/a_linked_list"
require "test/unit"

class ALinkedListTest < Test::Unit::TestCase
  def test_setup_of_linked_list
    a_ll = ALinkedList.new
    assert_equal ALinkedList::HEAD_VAL, a_ll.head.val
  end

  def test_curr_at_creation
    a_ll = ALinkedList.new
    assert_equal a_ll.head, a_ll.curr
  end

  def test_add
    val = 123
    a_ll = ALinkedList.new
    new_node = a_ll.add(val)
    assert_equal a_ll.curr, new_node
    assert_equal 1, a_ll.size
  end

  def test_remove
    # create the linked list
    a_ll = ALinkedList.new

    # add 3 nodes
    new_node1 = a_ll.add(789)
    new_node2 = a_ll.add(123)
    new_node3 = a_ll.add(456)

    # remove the node in the middle
    assert_equal 123, a_ll.remove(123)
    assert_equal 2, a_ll.size
    assert_equal a_ll.curr, new_node1
  end

  def test_size
    a_ll = ALinkedList.new
    for i in 0..4
      a_ll.add(i)
    end
    assert_equal 5, a_ll.size
  end

  def test_each
    # should move the curr pointer and return the node
    a_ll = ALinkedList.new
    for i in 0..4
      a_ll.add(i)
    end

    a_ll.each do |n|
      assert_not_nil n
    end
  end

  def test_each_with_empty_linked_list
    # should move the curr pointer and return the node
    a_ll = ALinkedList.new

    a_ll.each do |n|
      assert_equal nil, n
    end
  end
end
