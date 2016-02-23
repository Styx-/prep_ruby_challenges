def overlap?(first_rect, second_rect)
  first_max_x = [first_rect[0][0], first_rect[1][0]].max
  second_min_x = [second_rect[0][0], second_rect[1][0]].min
  first_max_y = [first_rect[0][1], first_rect[1][1]].max
  second_min_y = [second_rect[0][1], second_rect[1][1]].min

  return false if ((first_max_x <= second_min_x) || (first_max_y <= second_min_y))

   true
end