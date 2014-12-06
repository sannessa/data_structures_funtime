module DataStructuresFuntime
  require_relative "a_node"

  class ABinarySearchTree
    PARENT_VALUE = "**PARENT**"

    # Create an instance of a binary search tree
    def initialize
      # create the first node, we'll call parent
      @parent = ANode.new(PARENT_VALUE)
    end

    # The function that compares nodes of the tree
    #
    # @param l_node [ANode] the left value to be compared
    # @param r_node [ANode] the right value to be compared
    # @return [Fixnum] -1 for less than, 0 for equal, 1 for greater than
    def comparator(l_node, r_node)
      return_val = nil

      if l_node.val < r_node.val
        return_val = -1
      elsif l_node.val > r_node.val
        return_val = 1
      else
        return_val = 0
      end

      return_val
    end

  end
end
