module DataStructuresFuntime
  class ANode
    # nodes have a value, a next pointer and a previous pointer
    @val = nil
    @next = nil
    @prev = nil

    def initialize(val)
      @val = val
    end

    def set_next(next_node)
      @next = next_node
    end

    def next
      @next
    end

    def set_prev(prev_node)
      @prev = prev_node
    end

    def prev
      @prev
    end

    def set_val(val)
      @val = val
    end

    def val
      @val
    end
  end
end
