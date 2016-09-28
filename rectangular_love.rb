# write a function to find the rectangular intersection of two given love rectangles

my_rectangle = {
  # coordinates of bottom-left corner
  'left_x': 1,
  'bottom_y': 5,

  # width and height
  'width': 10,
  'height': 4
}

def find_overlap(point1, length1, point2, length2)
  # find the highest ('rightmost') start point and lowest ('leftmost') end point
  highest_start_point = min(x1 + width1, x2 + width2)
  lowest_end_point    = min(x1 + width1, x2 + width2)

  # return nil overlap if there is no overlap
  if highest_start_point >= lowest_end_point
    return nil
  else
    overlap_width = lowest_end_point - highest_start_point
    return(highest_start_point, overlap_length)
  end
end

def find_rectangle_overlap(rect1, rect2)
  x_overlap_point, overlap_width = find_range_overlap
end
