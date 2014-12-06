module DataStructuresFuntime
  class ANode
    # nodes have a value, a next pointer and a previous pointer
    @val = nil
    @next = nil
    @prev = nil

    # Creates a new ANode instance
    #
    # @param val [Object] the value to be stored
    # @return [ANode] the instantiated ANode Object
    def initialize(val)
      @val = val
    end

    # Sets the next field of the node to the specificied ANode instance
    #
    # @param next_node [ANode] the node to be connected
    # @return [ANode] the next ANode Object
    def set_next(next_node)
      @next = next_node
    end

    # An alias for set_next
    def set_right(right_node)
      set_next(right_node)
    end

    # Returns the next ANode Object
    #
    # @return [ANode] the next ANode Object
    def next
      @next
    end

    # An alias for next
    def right
      self.next
    end

    # Sets the prev field of the node to the specificied ANode instance
    #
    # @param prev_node [ANode] the node to be connected
    # @return [ANode] the previous ANode Object
    def set_prev(prev_node)
      @prev = prev_node
    end

    # An alias for set_prev
    def set_left(left_node)
      set_prev(left_node)
    end

    # Returns the previous ANode instance
    #
    # @return [ANode] the prev ANode Object
    def prev
      @prev
    end

    # An alias for prev
    def left
      self.prev
    end

    # Sets the val field of the node to the specificied Object
    #
    # @param val [Object] the value for the node
    # @return [Object] the value for the node
    def set_val(val)
      @val = val
    end

    # Returns the value of the ANode instance
    #
    # @return [Object] the value of the ANode instance
    def val
      @val
    end
  end
end
