module DataStructuresFuntime
  require_relative 'a_node'

  class ALinkedList
    HEAD_VAL = "**HEAD**"

    # Creates an instance of ALinkedList
    #
    # @return [ALinkedList] the instantiated ALinkedList Object
    def initialize
      @head = ANode.new(HEAD_VAL)
      @curr = @head
      @size = 0
    end

    # Returns the head of the linked list
    #
    # @return [ANode] the head of the linked list
    def head
      @head
    end

    # Returns the current pointer of the linked list
    #
    # @return [ANode] the current pointer of the linked list
    def curr
      @curr
    end

    # Returns the size of the linked list
    def size
      @size
    end

    # Add an Object to the linked list
    #
    # @param val [Object] the object to be added to the linked list
    # @return [ANode] the new ANode created
    def add(val)
      new_node = ANode.new(val)
      @curr.set_next(new_node)
      @size += 1
      @curr = new_node
    end

    # Remove an Object from the linked list
    #
    # May cause an O(n) operation
    #
    # @param val [Object] the object to be removed from the linked list
    # @return [Object] the removed Object
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

    # An iterator that yields each element to the caller
    #
    # @return [ANode] the entire linked list
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
