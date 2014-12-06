require_relative "../lib/data_structures_funtime/a_node"
require "test/unit"

class ANodeTest < Test::Unit::TestCase
  def test_setup_of_node
    val = 13941
    node = DataStructuresFuntime::ANode.new(val)
    assert_equal node.val, val
  end

  def test_next
    node1 = DataStructuresFuntime::ANode.new(931)
    node2 = DataStructuresFuntime::ANode.new(314)
    node1.set_next(node2)
    assert_equal node2, node1.next
    assert_equal node2.val, node1.next.val
  end

  def test_right
    node1 = DataStructuresFuntime::ANode.new(931)
    node2 = DataStructuresFuntime::ANode.new(314)
    node1.set_right(node2)
    assert_equal node2, node1.right
    assert_equal node2.val, node1.right.val
  end

  def test_prev
    node1 = DataStructuresFuntime::ANode.new(931)
    node2 = DataStructuresFuntime::ANode.new(314)
    node1.set_prev(node2)
    assert_equal node2, node1.prev
    assert_equal node2.val, node1.prev.val
  end

  def test_left
    node1 = DataStructuresFuntime::ANode.new(931)
    node2 = DataStructuresFuntime::ANode.new(314)
    node1.set_left(node2)
    assert_equal node2, node1.left
    assert_equal node2.val, node1.left.val
  end
end
