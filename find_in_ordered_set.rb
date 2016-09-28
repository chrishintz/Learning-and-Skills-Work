class Order
  def find_num(num)
    array = [1, 3, 6, 7, 8, 11, 14]
    floor = 0
    ceiling = array.length - 1

    while floor < ceiling
      guess_index = floor + ((ceiling - floor) /2)
      if num == array[guess_index]
        return true
      elsif num == array[ceiling] || num == array[floor]
        return true
      elsif num < array[guess_index]
        ceiling = guess_index
      else
        floor = guess_index
      end

      if floor + 1 == ceiling
        return false
      end
    end
  end
end
