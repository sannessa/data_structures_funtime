$:.unshift File.dirname(__FILE__)

require_relative "../lib/a_node"
require "test/unit"

class ANodeTest < Test::Unit::TestCase
  def test_setup_of_node
    val = 13941
    node = ANode.new(val)
    assert_equal node.val, val
  end

  def test_next
    node1 = ANode.new(931)
    node2 = ANode.new(314)
    node1.set_next(node2)
    assert_equal node2, node1.next
    assert_equal node2.val, node1.next.val
  end

  def test_prev
    node1 = ANode.new(931)
    node2 = ANode.new(314)
    node1.set_prev(node2)
    assert_equal node2, node1.prev
    assert_equal node2.val, node1.prev.val
  end
end
