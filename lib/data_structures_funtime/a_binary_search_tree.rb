module DataStructuresFuntime
  require_relative "a_node"
  require_relative "a_linked_list"

  class ABinarySearchTree
    # The function that compares nodes of the tree
    #
    # @param key [Fixnum] the left value to be compared
    # @param node [ANode] the right value to be compared
    # @return [Fixnum] -1 for less than, 0 for equal, 1 for greater than
    def comparator(key, r_node)
      return_val = nil

      if key < r_node.val
        return_val = -1
      elsif key > r_node.val
        return_val = 1
      else
        return_val = 0
      end

      return_val
    end

    # Add a value to the tree
    #
    # @param val [Fixnum] the value to be added to the tree
    def insert(val)
      if @parent.nil?
        return @parent = ANode.new(val)
      end

      # find where the val belongs
      new_node = ANode.new(val)
      recurse_insert(@parent, new_node)
    end

    def recurse_insert(parent, new_node)
      if parent.nil?
        return new_node
      elsif new_node.val < parent.val
        # insert to the left
	if parent.left.nil?
	  return parent.set_left(new_node)
	else
	  recurse_insert(parent.left, new_node)
	end
      elsif new_node.val > parent.val
        # insert to the right
	if parent.right.nil?
	  return parent.set_right(new_node)
	else
	  recurse_insert(parent.right, new_node)
	end
      end
    end

    # Find a node of specific value in the tree
    #
    # @param parent [ANode] the current parent of the tree
    # @param val [Fixnum] the value to be positioned in the tree
    def find(parent, val)
      if parent.nil? || (comparator(val, parent) == 0)
        return parent
      elsif comparator(val, parent) == -1
        # node is less than parent
	find(parent.left, val)
      elsif comparator(val, parent) == 1
        # node is more than parent
	find(parent.right, val)
      end
    end

    def search(val)
      return nil if @parent.nil?

      find(@parent, val)
    end

    def clear
      @parent = nil
    end

    def print_out_tree
      node = @parent
      while(!node.nil?)
        puts node.val

	if !(node.left.nil?)
	  puts '/'
	elsif !(node.right.nil?)
	  puts "\\"
	end
	node = node.left
      end
    end

    def traverse_tree(parent)
      return if parent.nil?
      puts parent.val
      if !parent.left.nil?
        puts "left of #{parent.val} is: "
        traverse_tree(parent.left)
      end
      if !parent.right.nil?
        puts "right of #{parent.val} is: "
        traverse_tree(parent.right)
      end
      if parent.left.nil? && parent.right.nil?
        return
      end
    end

    def root_node
      @parent
    end

    def print_out_specific_level(level)
      traverse_specific_level(root_node, 1, level)
    end

    def traverse_specific_level(node, current_level, desired_level)
      if (current_level == desired_level)
        puts node.val
	return
      end

      if !node.left.nil?
	traverse_specific_level(node.left, current_level + 1, desired_level)
      end

      if !node.right.nil?
        traverse_specific_level(node.right, current_level + 1, desired_level)
      end
    end
  end
end
