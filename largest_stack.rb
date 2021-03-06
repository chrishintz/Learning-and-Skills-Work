class MaxStack
  def initialize()
    @stack      = Stack.new()
    @maxs_stack = Stack.new()
  end

  # Add a new item to the top of our stack.  If the item is greater than or equal to the last item in maxs_stack, it's
  # the new max! So we'll add it to maxs_stack.
  def push(item)
    @stack.push(item)
    if !@maxs_stack.peek() || item >= @maxs_stack.peek()
      @maxs_stack.push(item)
    end
  end

  # Remove and return the top item from our stack. If it equals the top item in maxs_stack,
  # they must have been pushed in together. So we'll pop it out of maxs_stack too.
  def pop()
    item = @stack.pop()
    if item == @maxs_stack.peek()
      @maxs_stack.pop()
    end
    return item
  end

  # The last item in maxs_stack is the max item in our stack.
  def get_max()
    return @maxs_stack.peek()
  end

end
