def merge_sort(list)
  return list if list.size <= 1

  mid = (list.size / 2)
  left = merge_sort(list[0..mid-1])
  right = merge_sort(list[mid..list.size])
  merge(left, right)
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

list = [4,1,7,2,7,2,4,5,1,7,6,48]
p merge_sort(list)

# src: https://www.youtube.com/watch?v=Vn-qJijXgf0
