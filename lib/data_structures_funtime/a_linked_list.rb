module DataStructuresFuntime
  require_relative 'a_node'

  class ALinkedList
    HEAD_VAL = "**HEAD**"

    # init
    def initialize
      @head = ANode.new(HEAD_VAL)
      @curr = @head
      @size = 0
    end

    def head
      @head
    end

    # returns the current node
    def curr
      @curr
    end

    def size
      @size
    end

    def add(val)
      new_node = ANode.new(val)
      @curr.set_next(new_node)
      @size += 1
      @curr = new_node
    end

    def remove(val)
      # iterate through linkedlist until you find the val, then remove it
      curr = @head
      prev = curr
      while(curr.val != val)
        prev = curr
        curr = curr.next
      end
      prev.set_next(curr.next)
      curr = nil
      @curr = prev
      @size -= 1
      val
    end

    def each
      if @size > 0

        curr = @head.next

        begin
          yield curr
          curr = curr.next
        end while(curr != nil)
      end
    end
  end
end