class Array
  def array_left_rotation(a, k)
    if k > a.length
      k = k % (a.length)
    else
    end
    a[k..-1] + a[0...k]
  end
end
