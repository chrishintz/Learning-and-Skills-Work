def fib_iterative(n)
  #edge cases:
  if n < 0
    raise Exception, "Index was negative.  No such thing as a negative index in a series."
  elsif n == 0 || n == 1
    return n
  end

  prev = 0
  prev_prev = 1
  current = 0
  n.times do
    current = prev + prev_prev
    prev_prev = prev
    prev = current
  end

  return current      
end
