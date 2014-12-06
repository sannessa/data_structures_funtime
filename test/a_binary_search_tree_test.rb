require_relative "../lib/data_structures_funtime/a_binary_search_tree"
require_relative "../lib/data_structures_funtime/a_node"
require "test/unit"

class ABinarySearchTreeTest < Test::Unit::TestCase
  def test_setup_of_node
    abst = DataStructuresFuntime::ABinarySearchTree.new
    assert_not_nil abst
  end

  def test_comparator
    abst = DataStructuresFuntime::ABinarySearchTree.new

    # test left node less than right node
    l_node = DataStructuresFuntime::ANode.new(1)
    r_node = DataStructuresFuntime::ANode.new(3)
    res = abst.comparator(l_node.val, r_node)
    assert_equal -1, res

    # test left node greater than right node
    l_node = DataStructuresFuntime::ANode.new(8)
    r_node = DataStructuresFuntime::ANode.new(6)
    res = abst.comparator(l_node.val, r_node)
    assert_equal 1, res

    # test left node equal to right node
    l_node = DataStructuresFuntime::ANode.new(7)
    r_node = DataStructuresFuntime::ANode.new(7)
    res = abst.comparator(l_node.val, r_node)
    assert_equal 0, res
  end
end
